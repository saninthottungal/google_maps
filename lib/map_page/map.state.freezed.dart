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
  bool get showMarkedArea => throw _privateConstructorUsedError;
  bool get isSelectionInProgress => throw _privateConstructorUsedError;
  List<LatLng> get mapPoints => throw _privateConstructorUsedError;

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
      {bool showMarkedArea,
      bool isSelectionInProgress,
      List<LatLng> mapPoints});
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
    Object? showMarkedArea = null,
    Object? isSelectionInProgress = null,
    Object? mapPoints = null,
  }) {
    return _then(_value.copyWith(
      showMarkedArea: null == showMarkedArea
          ? _value.showMarkedArea
          : showMarkedArea // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectionInProgress: null == isSelectionInProgress
          ? _value.isSelectionInProgress
          : isSelectionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      mapPoints: null == mapPoints
          ? _value.mapPoints
          : mapPoints // ignore: cast_nullable_to_non_nullable
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
      {bool showMarkedArea,
      bool isSelectionInProgress,
      List<LatLng> mapPoints});
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
    Object? showMarkedArea = null,
    Object? isSelectionInProgress = null,
    Object? mapPoints = null,
  }) {
    return _then(_$MapPageStateImpl(
      showMarkedArea: null == showMarkedArea
          ? _value.showMarkedArea
          : showMarkedArea // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectionInProgress: null == isSelectionInProgress
          ? _value.isSelectionInProgress
          : isSelectionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      mapPoints: null == mapPoints
          ? _value._mapPoints
          : mapPoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc

class _$MapPageStateImpl implements _MapPageState {
  _$MapPageStateImpl(
      {this.showMarkedArea = false,
      this.isSelectionInProgress = false,
      final List<LatLng> mapPoints = const []})
      : _mapPoints = mapPoints;

  @override
  @JsonKey()
  final bool showMarkedArea;
  @override
  @JsonKey()
  final bool isSelectionInProgress;
  final List<LatLng> _mapPoints;
  @override
  @JsonKey()
  List<LatLng> get mapPoints {
    if (_mapPoints is EqualUnmodifiableListView) return _mapPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mapPoints);
  }

  @override
  String toString() {
    return 'MapPageState(showMarkedArea: $showMarkedArea, isSelectionInProgress: $isSelectionInProgress, mapPoints: $mapPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapPageStateImpl &&
            (identical(other.showMarkedArea, showMarkedArea) ||
                other.showMarkedArea == showMarkedArea) &&
            (identical(other.isSelectionInProgress, isSelectionInProgress) ||
                other.isSelectionInProgress == isSelectionInProgress) &&
            const DeepCollectionEquality()
                .equals(other._mapPoints, _mapPoints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showMarkedArea,
      isSelectionInProgress, const DeepCollectionEquality().hash(_mapPoints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapPageStateImplCopyWith<_$MapPageStateImpl> get copyWith =>
      __$$MapPageStateImplCopyWithImpl<_$MapPageStateImpl>(this, _$identity);
}

abstract class _MapPageState implements MapPageState {
  factory _MapPageState(
      {final bool showMarkedArea,
      final bool isSelectionInProgress,
      final List<LatLng> mapPoints}) = _$MapPageStateImpl;

  @override
  bool get showMarkedArea;
  @override
  bool get isSelectionInProgress;
  @override
  List<LatLng> get mapPoints;
  @override
  @JsonKey(ignore: true)
  _$$MapPageStateImplCopyWith<_$MapPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
