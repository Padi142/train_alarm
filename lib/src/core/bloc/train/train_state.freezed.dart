// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'train_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function(int radius, LatLng koordinaty) partial,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Succes value) succes,
    required TResult Function(Partial value) partial,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainStateCopyWith<$Res> {
  factory $TrainStateCopyWith(TrainState value, $Res Function(TrainState) then) = _$TrainStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainStateCopyWithImpl<$Res> implements $TrainStateCopyWith<$Res> {
  _$TrainStateCopyWithImpl(this._value, this._then);

  final TrainState _value;
  // ignore: unused_field
  final $Res Function(TrainState) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) = __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$TrainStateCopyWithImpl<$Res> implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then) : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'TrainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function(int radius, LatLng koordinaty) partial,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Succes value) succes,
    required TResult Function(Partial value) partial,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TrainState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$SuccesCopyWith<$Res> {
  factory _$$SuccesCopyWith(_$Succes value, $Res Function(_$Succes) then) = __$$SuccesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccesCopyWithImpl<$Res> extends _$TrainStateCopyWithImpl<$Res> implements _$$SuccesCopyWith<$Res> {
  __$$SuccesCopyWithImpl(_$Succes _value, $Res Function(_$Succes) _then) : super(_value, (v) => _then(v as _$Succes));

  @override
  _$Succes get _value => super._value as _$Succes;
}

/// @nodoc

class _$Succes implements Succes {
  const _$Succes();

  @override
  String toString() {
    return 'TrainState.succes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$Succes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function(int radius, LatLng koordinaty) partial,
    required TResult Function(String error) error,
  }) {
    return succes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
  }) {
    return succes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Succes value) succes,
    required TResult Function(Partial value) partial,
    required TResult Function(Error value) error,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class Succes implements TrainState {
  const factory Succes() = _$Succes;
}

/// @nodoc
abstract class _$$PartialCopyWith<$Res> {
  factory _$$PartialCopyWith(_$Partial value, $Res Function(_$Partial) then) = __$$PartialCopyWithImpl<$Res>;
  $Res call({int radius, LatLng koordinaty});
}

/// @nodoc
class __$$PartialCopyWithImpl<$Res> extends _$TrainStateCopyWithImpl<$Res> implements _$$PartialCopyWith<$Res> {
  __$$PartialCopyWithImpl(_$Partial _value, $Res Function(_$Partial) _then) : super(_value, (v) => _then(v as _$Partial));

  @override
  _$Partial get _value => super._value as _$Partial;

  @override
  $Res call({
    Object? radius = freezed,
    Object? koordinaty = freezed,
  }) {
    return _then(_$Partial(
      radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      koordinaty == freezed
          ? _value.koordinaty
          : koordinaty // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$Partial implements Partial {
  const _$Partial(this.radius, this.koordinaty);

  @override
  final int radius;
  @override
  final LatLng koordinaty;

  @override
  String toString() {
    return 'TrainState.partial(radius: $radius, koordinaty: $koordinaty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Partial && const DeepCollectionEquality().equals(other.radius, radius) && const DeepCollectionEquality().equals(other.koordinaty, koordinaty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(radius), const DeepCollectionEquality().hash(koordinaty));

  @JsonKey(ignore: true)
  @override
  _$$PartialCopyWith<_$Partial> get copyWith => __$$PartialCopyWithImpl<_$Partial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function(int radius, LatLng koordinaty) partial,
    required TResult Function(String error) error,
  }) {
    return partial(radius, koordinaty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
  }) {
    return partial?.call(radius, koordinaty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (partial != null) {
      return partial(radius, koordinaty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Succes value) succes,
    required TResult Function(Partial value) partial,
    required TResult Function(Error value) error,
  }) {
    return partial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
  }) {
    return partial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (partial != null) {
      return partial(this);
    }
    return orElse();
  }
}

abstract class Partial implements TrainState {
  const factory Partial(final int radius, final LatLng koordinaty) = _$Partial;

  int get radius;
  LatLng get koordinaty;
  @JsonKey(ignore: true)
  _$$PartialCopyWith<_$Partial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) = __$$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$TrainStateCopyWithImpl<$Res> implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then) : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TrainState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$Error && const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith => __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function(int radius, LatLng koordinaty) partial,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function(int radius, LatLng koordinaty)? partial,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Succes value) succes,
    required TResult Function(Partial value) partial,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Succes value)? succes,
    TResult Function(Partial value)? partial,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements TrainState {
  const factory Error(final String error) = _$Error;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
