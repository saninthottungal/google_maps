import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maps/map_page/map.state.dart';

final mapNotifierProvider =
    NotifierProvider<MapLogicNotifier, MapPageState>(MapLogicNotifier.new);

class MapLogicNotifier extends Notifier<MapPageState> {
  @override
  build() {
    return MapPageState();
  }

  void changePosition(LatLng postion, int index) {
    final previousPoints = state.mapPoints;
    previousPoints[index] = postion;
    state = state.copyWith(mapPoints: previousPoints);
  }
}
