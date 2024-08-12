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
    final previousPoints = [...state.mapPoints];
    previousPoints[index] = postion;
    state = state.copyWith(mapPoints: previousPoints);
  }

  void toggleMarkedArea() {
    state = state.copyWith(showMarkedArea: !state.showMarkedArea);
  }

  void toggleSelection() {
    state = state.copyWith(isSelectionInProgress: !state.isSelectionInProgress);
  }

  void toggleDeletion() {
    state = state.copyWith(isDeletionInProgress: !state.isDeletionInProgress);
  }

  void addMarker({required LatLng postion}) {
    final previousPoints = [...state.mapPoints];
    state = state.copyWith(mapPoints: [...previousPoints, postion]);
  }

  void removeMarker() {
    if (state.selectedPostion == null) return;
    final previousPoints = [...state.mapPoints];
    previousPoints.remove(state.selectedPostion);
    state = state.copyWith(mapPoints: previousPoints);
  }

  void selectedMarker(LatLng postion) {
    state = state.copyWith(selectedPostion: postion);
  }
}
