// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_people_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetPeopleDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initLoad,
    required TResult Function(int? page) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initLoad,
    TResult Function(int? page)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initLoad,
    TResult Function(int? page)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoadPeopleEvent value) initLoad,
    required TResult Function(LoadMorePeopleEvent value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoadPeopleEvent value)? initLoad,
    TResult Function(LoadMorePeopleEvent value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoadPeopleEvent value)? initLoad,
    TResult Function(LoadMorePeopleEvent value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPeopleDataEventCopyWith<$Res> {
  factory $GetPeopleDataEventCopyWith(
          GetPeopleDataEvent value, $Res Function(GetPeopleDataEvent) then) =
      _$GetPeopleDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPeopleDataEventCopyWithImpl<$Res>
    implements $GetPeopleDataEventCopyWith<$Res> {
  _$GetPeopleDataEventCopyWithImpl(this._value, this._then);

  final GetPeopleDataEvent _value;
  // ignore: unused_field
  final $Res Function(GetPeopleDataEvent) _then;
}

/// @nodoc
abstract class _$$InitialLoadPeopleEventCopyWith<$Res> {
  factory _$$InitialLoadPeopleEventCopyWith(_$InitialLoadPeopleEvent value,
          $Res Function(_$InitialLoadPeopleEvent) then) =
      __$$InitialLoadPeopleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialLoadPeopleEventCopyWithImpl<$Res>
    extends _$GetPeopleDataEventCopyWithImpl<$Res>
    implements _$$InitialLoadPeopleEventCopyWith<$Res> {
  __$$InitialLoadPeopleEventCopyWithImpl(_$InitialLoadPeopleEvent _value,
      $Res Function(_$InitialLoadPeopleEvent) _then)
      : super(_value, (v) => _then(v as _$InitialLoadPeopleEvent));

  @override
  _$InitialLoadPeopleEvent get _value =>
      super._value as _$InitialLoadPeopleEvent;
}

/// @nodoc

class _$InitialLoadPeopleEvent implements InitialLoadPeopleEvent {
  const _$InitialLoadPeopleEvent();

  @override
  String toString() {
    return 'GetPeopleDataEvent.initLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLoadPeopleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initLoad,
    required TResult Function(int? page) loadMore,
  }) {
    return initLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initLoad,
    TResult Function(int? page)? loadMore,
  }) {
    return initLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initLoad,
    TResult Function(int? page)? loadMore,
    required TResult orElse(),
  }) {
    if (initLoad != null) {
      return initLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoadPeopleEvent value) initLoad,
    required TResult Function(LoadMorePeopleEvent value) loadMore,
  }) {
    return initLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoadPeopleEvent value)? initLoad,
    TResult Function(LoadMorePeopleEvent value)? loadMore,
  }) {
    return initLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoadPeopleEvent value)? initLoad,
    TResult Function(LoadMorePeopleEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (initLoad != null) {
      return initLoad(this);
    }
    return orElse();
  }
}

abstract class InitialLoadPeopleEvent implements GetPeopleDataEvent {
  const factory InitialLoadPeopleEvent() = _$InitialLoadPeopleEvent;
}

/// @nodoc
abstract class _$$LoadMorePeopleEventCopyWith<$Res> {
  factory _$$LoadMorePeopleEventCopyWith(_$LoadMorePeopleEvent value,
          $Res Function(_$LoadMorePeopleEvent) then) =
      __$$LoadMorePeopleEventCopyWithImpl<$Res>;
  $Res call({int? page});
}

/// @nodoc
class __$$LoadMorePeopleEventCopyWithImpl<$Res>
    extends _$GetPeopleDataEventCopyWithImpl<$Res>
    implements _$$LoadMorePeopleEventCopyWith<$Res> {
  __$$LoadMorePeopleEventCopyWithImpl(
      _$LoadMorePeopleEvent _value, $Res Function(_$LoadMorePeopleEvent) _then)
      : super(_value, (v) => _then(v as _$LoadMorePeopleEvent));

  @override
  _$LoadMorePeopleEvent get _value => super._value as _$LoadMorePeopleEvent;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$LoadMorePeopleEvent(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadMorePeopleEvent implements LoadMorePeopleEvent {
  const _$LoadMorePeopleEvent({this.page});

  @override
  final int? page;

  @override
  String toString() {
    return 'GetPeopleDataEvent.loadMore(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMorePeopleEvent &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$LoadMorePeopleEventCopyWith<_$LoadMorePeopleEvent> get copyWith =>
      __$$LoadMorePeopleEventCopyWithImpl<_$LoadMorePeopleEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initLoad,
    required TResult Function(int? page) loadMore,
  }) {
    return loadMore(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initLoad,
    TResult Function(int? page)? loadMore,
  }) {
    return loadMore?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initLoad,
    TResult Function(int? page)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoadPeopleEvent value) initLoad,
    required TResult Function(LoadMorePeopleEvent value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoadPeopleEvent value)? initLoad,
    TResult Function(LoadMorePeopleEvent value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoadPeopleEvent value)? initLoad,
    TResult Function(LoadMorePeopleEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMorePeopleEvent implements GetPeopleDataEvent {
  const factory LoadMorePeopleEvent({final int? page}) = _$LoadMorePeopleEvent;

  int? get page;
  @JsonKey(ignore: true)
  _$$LoadMorePeopleEventCopyWith<_$LoadMorePeopleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetPeopleDataState {
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isLoadingMore => throw _privateConstructorUsedError;
  bool? get hasNewData => throw _privateConstructorUsedError;
  List<PersonEntity>? get people => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPeopleDataStateCopyWith<GetPeopleDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPeopleDataStateCopyWith<$Res> {
  factory $GetPeopleDataStateCopyWith(
          GetPeopleDataState value, $Res Function(GetPeopleDataState) then) =
      _$GetPeopleDataStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isLoading,
      bool? isLoadingMore,
      bool? hasNewData,
      List<PersonEntity>? people});
}

/// @nodoc
class _$GetPeopleDataStateCopyWithImpl<$Res>
    implements $GetPeopleDataStateCopyWith<$Res> {
  _$GetPeopleDataStateCopyWithImpl(this._value, this._then);

  final GetPeopleDataState _value;
  // ignore: unused_field
  final $Res Function(GetPeopleDataState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingMore = freezed,
    Object? hasNewData = freezed,
    Object? people = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoadingMore: isLoadingMore == freezed
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasNewData: hasNewData == freezed
          ? _value.hasNewData
          : hasNewData // ignore: cast_nullable_to_non_nullable
              as bool?,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<PersonEntity>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetPeopleDataStateCopyWith<$Res>
    implements $GetPeopleDataStateCopyWith<$Res> {
  factory _$$_GetPeopleDataStateCopyWith(_$_GetPeopleDataState value,
          $Res Function(_$_GetPeopleDataState) then) =
      __$$_GetPeopleDataStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isLoading,
      bool? isLoadingMore,
      bool? hasNewData,
      List<PersonEntity>? people});
}

/// @nodoc
class __$$_GetPeopleDataStateCopyWithImpl<$Res>
    extends _$GetPeopleDataStateCopyWithImpl<$Res>
    implements _$$_GetPeopleDataStateCopyWith<$Res> {
  __$$_GetPeopleDataStateCopyWithImpl(
      _$_GetPeopleDataState _value, $Res Function(_$_GetPeopleDataState) _then)
      : super(_value, (v) => _then(v as _$_GetPeopleDataState));

  @override
  _$_GetPeopleDataState get _value => super._value as _$_GetPeopleDataState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingMore = freezed,
    Object? hasNewData = freezed,
    Object? people = freezed,
  }) {
    return _then(_$_GetPeopleDataState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoadingMore: isLoadingMore == freezed
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasNewData: hasNewData == freezed
          ? _value.hasNewData
          : hasNewData // ignore: cast_nullable_to_non_nullable
              as bool?,
      people: people == freezed
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<PersonEntity>?,
    ));
  }
}

/// @nodoc

class _$_GetPeopleDataState implements _GetPeopleDataState {
  _$_GetPeopleDataState(
      {this.isLoading,
      this.isLoadingMore,
      this.hasNewData,
      final List<PersonEntity>? people})
      : _people = people;

  @override
  final bool? isLoading;
  @override
  final bool? isLoadingMore;
  @override
  final bool? hasNewData;
  final List<PersonEntity>? _people;
  @override
  List<PersonEntity>? get people {
    final value = _people;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetPeopleDataState(isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasNewData: $hasNewData, people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPeopleDataState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingMore, isLoadingMore) &&
            const DeepCollectionEquality()
                .equals(other.hasNewData, hasNewData) &&
            const DeepCollectionEquality().equals(other._people, _people));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoadingMore),
      const DeepCollectionEquality().hash(hasNewData),
      const DeepCollectionEquality().hash(_people));

  @JsonKey(ignore: true)
  @override
  _$$_GetPeopleDataStateCopyWith<_$_GetPeopleDataState> get copyWith =>
      __$$_GetPeopleDataStateCopyWithImpl<_$_GetPeopleDataState>(
          this, _$identity);
}

abstract class _GetPeopleDataState implements GetPeopleDataState {
  factory _GetPeopleDataState(
      {final bool? isLoading,
      final bool? isLoadingMore,
      final bool? hasNewData,
      final List<PersonEntity>? people}) = _$_GetPeopleDataState;

  @override
  bool? get isLoading;
  @override
  bool? get isLoadingMore;
  @override
  bool? get hasNewData;
  @override
  List<PersonEntity>? get people;
  @override
  @JsonKey(ignore: true)
  _$$_GetPeopleDataStateCopyWith<_$_GetPeopleDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
