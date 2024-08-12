// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<LatLng> get polyPoints => throw _privateConstructorUsedError;
  List<LatLng> get markerPoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapPageStateCopyWith<MapPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPageStateCopyWith<$Res> {
  factory $MapPageStateCopyWith(
          MapPageState value, $Res Function(MapPageState) then) =
      _$MapPageStateCopyWithImpl<$Res, MapPageState>;
  @useResult
  $Res call(
      {bool isLoading, List<LatLng> polyPoints, List<LatLng> markerPoints});
}

/// @nodoc
class _$MapPageStateCopyWithImpl<$Res, $Val extends MapPageState>
    implements $MapPageStateCopyWith<$Res> {
  _$MapPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? polyPoints = null,
    Object? markerPoints = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      polyPoints: null == polyPoints
          ? _value.polyPoints
          : polyPoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      markerPoints: null == markerPoints
          ? _value.markerPoints
          : markerPoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapPageStateImplCopyWith<$Res>
    implements $MapPageStateCopyWith<$Res> {
  factory _$$MapPageStateImplCopyWith(
          _$MapPageStateImpl value, $Res Function(_$MapPageStateImpl) then) =
      __$$MapPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<LatLng> polyPoints, List<LatLng> markerPoints});
}

/// @nodoc
class __$$MapPageStateImplCopyWithImpl<$Res>
    extends _$MapPageStateCopyWithImpl<$Res, _$MapPageStateImpl>
    implements _$$MapPageStateImplCopyWith<$Res> {
  __$$MapPageStateImplCopyWithImpl(
      _$MapPageStateImpl _value, $Res Function(_$MapPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? polyPoints = null,
    Object? markerPoints = null,
  }) {
    return _then(_$MapPageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      polyPoints: null == polyPoints
          ? _value._polyPoints
          : polyPoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      markerPoints: null == markerPoints
          ? _value._markerPoints
          : markerPoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc

class _$MapPageStateImpl implements _MapPageState {
  _$MapPageStateImpl(
      {this.isLoading = false,
      final List<LatLng> polyPoints = const [
        LatLng(11.075777785018062, 75.94688319328512),
        LatLng(11.073250814064128, 75.95016621702247),
        LatLng(11.070197361727423, 75.94606780176865),
        LatLng(11.073693035555733, 75.94417952667789),
        LatLng(11.075777785018062, 75.94688319328512)
      ],
      final List<LatLng> markerPoints = const []})
      : _polyPoints = polyPoints,
        _markerPoints = markerPoints;

  @override
  @JsonKey()
  final bool isLoading;
  final List<LatLng> _polyPoints;
  @override
  @JsonKey()
  List<LatLng> get polyPoints {
    if (_polyPoints is EqualUnmodifiableListView) return _polyPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polyPoints);
  }

  final List<LatLng> _markerPoints;
  @override
  @JsonKey()
  List<LatLng> get markerPoints {
    if (_markerPoints is EqualUnmodifiableListView) return _markerPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markerPoints);
  }

  @override
  String toString() {
    return 'MapPageState(isLoading: $isLoading, polyPoints: $polyPoints, markerPoints: $markerPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapPageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._polyPoints, _polyPoints) &&
            const DeepCollectionEquality()
                .equals(other._markerPoints, _markerPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_polyPoints),
      const DeepCollectionEquality().hash(_markerPoints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapPageStateImplCopyWith<_$MapPageStateImpl> get copyWith =>
      __$$MapPageStateImplCopyWithImpl<_$MapPageStateImpl>(this, _$identity);
}

abstract class _MapPageState implements MapPageState {
  factory _MapPageState(
      {final bool isLoading,
      final List<LatLng> polyPoints,
      final List<LatLng> markerPoints}) = _$MapPageStateImpl;

  @override
  bool get isLoading;
  @override
  List<LatLng> get polyPoints;
  @override
  List<LatLng> get markerPoints;
  @override
  @JsonKey(ignore: true)
  _$$MapPageStateImplCopyWith<_$MapPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
