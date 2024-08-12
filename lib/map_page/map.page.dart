import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  MapPage({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _cameraPosition = CameraPosition(
      target: LatLng(11.073819384430653, 75.94709776999998), zoom: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Page"),
      ),
      body: GoogleMap(
        initialCameraPosition: _cameraPosition,
        onMapCreated: (controller) => _controller.complete(controller),
      ),
    );
  }
}
