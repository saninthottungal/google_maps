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
  $Res call({bool isLoading, List<LatLng> mapPoints});
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
    Object? mapPoints = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
  $Res call({bool isLoading, List<LatLng> mapPoints});
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
    Object? mapPoints = null,
  }) {
    return _then(_$MapPageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      {this.isLoading = false,
      final List<LatLng> mapPoints = const [
        LatLng(11.075777785018062, 75.94688319328512),
        LatLng(11.073250814064128, 75.95016621702247),
        LatLng(11.070197361727423, 75.94606780176865),
        LatLng(11.073693035555733, 75.94417952667789)
      ]})
      : _mapPoints = mapPoints;

  @override
  @JsonKey()
  final bool isLoading;
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
    return 'MapPageState(isLoading: $isLoading, mapPoints: $mapPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapPageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._mapPoints, _mapPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_mapPoints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapPageStateImplCopyWith<_$MapPageStateImpl> get copyWith =>
      __$$MapPageStateImplCopyWithImpl<_$MapPageStateImpl>(this, _$identity);
}

abstract class _MapPageState implements MapPageState {
  factory _MapPageState({final bool isLoading, final List<LatLng> mapPoints}) =
      _$MapPageStateImpl;

  @override
  bool get isLoading;
  @override
  List<LatLng> get mapPoints;
  @override
  @JsonKey(ignore: true)
  _$$MapPageStateImplCopyWith<_$MapPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
