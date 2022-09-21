// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_person_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetPersonInfoEvent {
  PersonEntity get person => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity person) getInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PersonEntity person)? getInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity person)? getInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInfoEvent value) getInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetInfoEvent value)? getInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInfoEvent value)? getInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPersonInfoEventCopyWith<GetPersonInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPersonInfoEventCopyWith<$Res> {
  factory $GetPersonInfoEventCopyWith(
          GetPersonInfoEvent value, $Res Function(GetPersonInfoEvent) then) =
      _$GetPersonInfoEventCopyWithImpl<$Res>;
  $Res call({PersonEntity person});
}

/// @nodoc
class _$GetPersonInfoEventCopyWithImpl<$Res>
    implements $GetPersonInfoEventCopyWith<$Res> {
  _$GetPersonInfoEventCopyWithImpl(this._value, this._then);

  final GetPersonInfoEvent _value;
  // ignore: unused_field
  final $Res Function(GetPersonInfoEvent) _then;

  @override
  $Res call({
    Object? person = freezed,
  }) {
    return _then(_value.copyWith(
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as PersonEntity,
    ));
  }
}

/// @nodoc
abstract class _$$GetInfoEventCopyWith<$Res>
    implements $GetPersonInfoEventCopyWith<$Res> {
  factory _$$GetInfoEventCopyWith(
          _$GetInfoEvent value, $Res Function(_$GetInfoEvent) then) =
      __$$GetInfoEventCopyWithImpl<$Res>;
  @override
  $Res call({PersonEntity person});
}

/// @nodoc
class __$$GetInfoEventCopyWithImpl<$Res>
    extends _$GetPersonInfoEventCopyWithImpl<$Res>
    implements _$$GetInfoEventCopyWith<$Res> {
  __$$GetInfoEventCopyWithImpl(
      _$GetInfoEvent _value, $Res Function(_$GetInfoEvent) _then)
      : super(_value, (v) => _then(v as _$GetInfoEvent));

  @override
  _$GetInfoEvent get _value => super._value as _$GetInfoEvent;

  @override
  $Res call({
    Object? person = freezed,
  }) {
    return _then(_$GetInfoEvent(
      person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as PersonEntity,
    ));
  }
}

/// @nodoc

class _$GetInfoEvent implements GetInfoEvent {
  const _$GetInfoEvent(this.person);

  @override
  final PersonEntity person;

  @override
  String toString() {
    return 'GetPersonInfoEvent.getInfo(person: $person)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoEvent &&
            const DeepCollectionEquality().equals(other.person, person));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(person));

  @JsonKey(ignore: true)
  @override
  _$$GetInfoEventCopyWith<_$GetInfoEvent> get copyWith =>
      __$$GetInfoEventCopyWithImpl<_$GetInfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity person) getInfo,
  }) {
    return getInfo(person);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PersonEntity person)? getInfo,
  }) {
    return getInfo?.call(person);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity person)? getInfo,
    required TResult orElse(),
  }) {
    if (getInfo != null) {
      return getInfo(person);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInfoEvent value) getInfo,
  }) {
    return getInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetInfoEvent value)? getInfo,
  }) {
    return getInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInfoEvent value)? getInfo,
    required TResult orElse(),
  }) {
    if (getInfo != null) {
      return getInfo(this);
    }
    return orElse();
  }
}

abstract class GetInfoEvent implements GetPersonInfoEvent {
  const factory GetInfoEvent(final PersonEntity person) = _$GetInfoEvent;

  @override
  PersonEntity get person;
  @override
  @JsonKey(ignore: true)
  _$$GetInfoEventCopyWith<_$GetInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetPersonInfoState {
  bool? get isLoading => throw _privateConstructorUsedError;
  Option<Either<Failure, PersonInfoEntity>>? get result =>
      throw _privateConstructorUsedError;
  List<PersonImageEntity>? get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPersonInfoStateCopyWith<GetPersonInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPersonInfoStateCopyWith<$Res> {
  factory $GetPersonInfoStateCopyWith(
          GetPersonInfoState value, $Res Function(GetPersonInfoState) then) =
      _$GetPersonInfoStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isLoading,
      Option<Either<Failure, PersonInfoEntity>>? result,
      List<PersonImageEntity>? images});
}

/// @nodoc
class _$GetPersonInfoStateCopyWithImpl<$Res>
    implements $GetPersonInfoStateCopyWith<$Res> {
  _$GetPersonInfoStateCopyWithImpl(this._value, this._then);

  final GetPersonInfoState _value;
  // ignore: unused_field
  final $Res Function(GetPersonInfoState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? result = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, PersonInfoEntity>>?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PersonImageEntity>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetPersonInfoStateCopyWith<$Res>
    implements $GetPersonInfoStateCopyWith<$Res> {
  factory _$$_GetPersonInfoStateCopyWith(_$_GetPersonInfoState value,
          $Res Function(_$_GetPersonInfoState) then) =
      __$$_GetPersonInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isLoading,
      Option<Either<Failure, PersonInfoEntity>>? result,
      List<PersonImageEntity>? images});
}

/// @nodoc
class __$$_GetPersonInfoStateCopyWithImpl<$Res>
    extends _$GetPersonInfoStateCopyWithImpl<$Res>
    implements _$$_GetPersonInfoStateCopyWith<$Res> {
  __$$_GetPersonInfoStateCopyWithImpl(
      _$_GetPersonInfoState _value, $Res Function(_$_GetPersonInfoState) _then)
      : super(_value, (v) => _then(v as _$_GetPersonInfoState));

  @override
  _$_GetPersonInfoState get _value => super._value as _$_GetPersonInfoState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? result = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_GetPersonInfoState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, PersonInfoEntity>>?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PersonImageEntity>?,
    ));
  }
}

/// @nodoc

class _$_GetPersonInfoState implements _GetPersonInfoState {
  const _$_GetPersonInfoState(
      {this.isLoading, this.result, final List<PersonImageEntity>? images})
      : _images = images;

  @override
  final bool? isLoading;
  @override
  final Option<Either<Failure, PersonInfoEntity>>? result;
  final List<PersonImageEntity>? _images;
  @override
  List<PersonImageEntity>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetPersonInfoState(isLoading: $isLoading, result: $result, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPersonInfoState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$_GetPersonInfoStateCopyWith<_$_GetPersonInfoState> get copyWith =>
      __$$_GetPersonInfoStateCopyWithImpl<_$_GetPersonInfoState>(
          this, _$identity);
}

abstract class _GetPersonInfoState implements GetPersonInfoState {
  const factory _GetPersonInfoState(
      {final bool? isLoading,
      final Option<Either<Failure, PersonInfoEntity>>? result,
      final List<PersonImageEntity>? images}) = _$_GetPersonInfoState;

  @override
  bool? get isLoading;
  @override
  Option<Either<Failure, PersonInfoEntity>>? get result;
  @override
  List<PersonImageEntity>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_GetPersonInfoStateCopyWith<_$_GetPersonInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
