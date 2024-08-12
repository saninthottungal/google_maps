import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'map.state.freezed.dart';

@freezed
class MapPageState with _$MapPageState {
  factory MapPageState({
    @Default(false) bool isLoading,
    @Default([
      LatLng(11.075777785018062, 75.94688319328512),
      LatLng(11.073250814064128, 75.95016621702247),
      LatLng(11.070197361727423, 75.94606780176865),
      LatLng(11.073693035555733, 75.94417952667789),
      LatLng(11.075777785018062, 75.94688319328512),
    ])
    List<LatLng> polyPoints,
    @Default([]) List<LatLng> markerPoints,
  }) = _MapPageState;
}
