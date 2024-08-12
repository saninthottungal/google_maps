import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maps/map_page/map.logic.dart';

class MapPage extends HookWidget {
  MapPage({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _cameraPosition = CameraPosition(
      target: LatLng(11.073819384430653, 75.94709776999998), zoom: 15);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(
        Duration.zero,
        () {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     behavior: SnackBarBehavior.floating,
          //     content: Text(
          //       "Tap and hold marker to change region",
          //       style: Theme.of(context)
          //           .textTheme
          //           .titleLarge
          //           ?.copyWith(color: Colors.white),
          //     ),
          //   ),
          // );
        },
      );
      return null;
    });
    final pod = mapNotifierProvider;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Page"),
      ),
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Consumer(builder: (context, ref, _) {
            final markerPoints =
                ref.watch(pod.select((value) => value.mapPoints));
            return GoogleMap(
              myLocationButtonEnabled: false,
              markers: List.generate(
                markerPoints.length,
                (index) => Marker(
                  markerId: MarkerId("$index"),
                  position: markerPoints[index],
                  draggable: true,
                  onDragEnd: (value) {
                    ref.read(pod.notifier).changePosition(value, index);
                  },
                ),
              ).toSet(),
              polygons: <Polygon>{
                Polygon(
                  polygonId: const PolygonId("1"),
                  points: markerPoints.isEmpty
                      ? []
                      : [
                          ...markerPoints,
                          markerPoints.first,
                        ],
                  fillColor: Colors.blue.shade100,
                  strokeColor: Colors.black38,
                  strokeWidth: 6,
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
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (!isSelectionInProgress)
                    IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(Icons.layers_clear_sharp),
                    ),
                  FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text(isSelectionInProgress ? "Done" : "Add Marker"),
                    icon: Icon(
                      isSelectionInProgress ? Icons.done : Icons.add,
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
