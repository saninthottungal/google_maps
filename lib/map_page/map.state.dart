import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'map.state.freezed.dart';

@freezed
class MapPageState with _$MapPageState {
  factory MapPageState({
    @Default(false) bool isLoading,
    @Default([]) List<LatLng> polyPoints,
    @Default([]) List<LatLng> markerPoints,
  }) = _MapPageState;
}
