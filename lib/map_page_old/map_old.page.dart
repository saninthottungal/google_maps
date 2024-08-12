import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maps/map_page_old/map_old.logic.dart';

class MapPageOld extends HookWidget {
  MapPageOld({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _cameraPosition = CameraPosition(
      target: LatLng(11.073819384430653, 75.94709776999998), zoom: 15);

  @override
  Widget build(BuildContext context) {
    final pod = mapOldNotifierProvider;
    useEffect(() {
      Future.delayed(
        Duration.zero,
        () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(
                "Tap and hold marker to change region",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white),
              ),
            ),
          );
        },
      );
      return null;
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Page"),
      ),
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Consumer(builder: (context, ref, _) {
            final isSelectionInProgress =
                ref.watch(pod.select((value) => value.isSelectionInProgress));
            final isDeletionInProgress =
                ref.watch(pod.select((value) => value.isDeletionInProgress));
            final markerPoints =
                ref.watch(pod.select((value) => value.mapPoints));
            final showMarkedArea =
                ref.watch(pod.select((value) => value.showMarkedArea));
            return GoogleMap(
              onTap: (argument) {
                if (!ref.read(pod).isSelectionInProgress) return;
                ref.read(pod.notifier).addMarker(postion: argument);
              },
              myLocationButtonEnabled: false,
              markers: List.generate(
                markerPoints.length,
                (index) => Marker(
                  markerId: MarkerId("$index"),
                  position: markerPoints[index],
                  draggable: true,
                  onTap: () {
                    if (ref.read(pod).isDeletionInProgress) return;
                    ref.read(pod.notifier).toggleDeletion();
                    ref.read(pod.notifier).selectedMarker(markerPoints[index]);
                  },
                  onDragEnd: (value) {
                    ref.read(pod.notifier).changePosition(value, index);
                  },
                ),
              ).toSet(),
              polygons: markerPoints.isEmpty ||
                      isDeletionInProgress ||
                      isSelectionInProgress
                  ? {}
                  : <Polygon>{
                      Polygon(
                        polygonId: const PolygonId("1"),
                        points: [
                          ...markerPoints,
                          markerPoints.first,
                        ],
                        fillColor: showMarkedArea
                            ? Colors.black26
                            : Colors.transparent,
                        strokeColor: Colors.black38,
                        strokeWidth: 4,
                      )
                    },
              initialCameraPosition: _cameraPosition,
              onMapCreated: (controller) {
                _controller.complete(controller);
              },
            );
          }),
          Consumer(builder: (context, ref, _) {
            final isSelectionInProgress =
                ref.watch(pod.select((value) => value.isSelectionInProgress));
            final isDeletionInProgress =
                ref.watch(pod.select((value) => value.isDeletionInProgress));
            final showMarkedArea =
                ref.watch(pod.select((value) => value.showMarkedArea));
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (isSelectionInProgress) const Spacer(),
                  if (!isSelectionInProgress)
                    IconButton.filled(
                      onPressed: () {
                        if (ref.read(pod).isDeletionInProgress) {
                          ref.read(pod.notifier).toggleDeletion();
                        } else {
                          ref.read(pod.notifier).toggleMarkedArea();
                        }
                      },
                      icon: Icon(
                        isDeletionInProgress
                            ? Icons.close
                            : showMarkedArea
                                ? Icons.layers_clear_sharp
                                : Icons.layers,
                      ),
                    ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      if (ref.read(pod).isDeletionInProgress) {
                        ref.read(pod.notifier).removeMarker();
                        ref.read(pod.notifier).toggleDeletion();
                      } else {
                        ref.read(pod.notifier).toggleSelection();
                      }
                    },
                    label: Text(
                      isDeletionInProgress
                          ? "Delete Marker"
                          : isSelectionInProgress
                              ? "Done"
                              : "Add Marker",
                    ),
                    icon: Icon(
                      isDeletionInProgress
                          ? Icons.delete_outline
                          : isSelectionInProgress
                              ? Icons.done
                              : Icons.add,
                    ),
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
