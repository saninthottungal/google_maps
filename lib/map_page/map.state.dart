import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'map.state.freezed.dart';

@freezed
class MapPageState with _$MapPageState {
  factory MapPageState({
    @Default(false) bool showMarkedArea,
    @Default(false) bool isSelectionInProgress,
    @Default([]) List<LatLng> mapPoints,
  }) = _MapPageState;
}
