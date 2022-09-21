// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_image_downloader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonImageDownloaderEvent {
  PersonImageEntity get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonImageEntity image) download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PersonImageEntity image)? download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonImageEntity image)? download,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadEvent value) download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadEvent value)? download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadEvent value)? download,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonImageDownloaderEventCopyWith<PersonImageDownloaderEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonImageDownloaderEventCopyWith<$Res> {
  factory $PersonImageDownloaderEventCopyWith(PersonImageDownloaderEvent value,
          $Res Function(PersonImageDownloaderEvent) then) =
      _$PersonImageDownloaderEventCopyWithImpl<$Res>;
  $Res call({PersonImageEntity image});
}

/// @nodoc
class _$PersonImageDownloaderEventCopyWithImpl<$Res>
    implements $PersonImageDownloaderEventCopyWith<$Res> {
  _$PersonImageDownloaderEventCopyWithImpl(this._value, this._then);

  final PersonImageDownloaderEvent _value;
  // ignore: unused_field
  final $Res Function(PersonImageDownloaderEvent) _then;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PersonImageEntity,
    ));
  }
}

/// @nodoc
abstract class _$$DownloadEventCopyWith<$Res>
    implements $PersonImageDownloaderEventCopyWith<$Res> {
  factory _$$DownloadEventCopyWith(
          _$DownloadEvent value, $Res Function(_$DownloadEvent) then) =
      __$$DownloadEventCopyWithImpl<$Res>;
  @override
  $Res call({PersonImageEntity image});
}

/// @nodoc
class __$$DownloadEventCopyWithImpl<$Res>
    extends _$PersonImageDownloaderEventCopyWithImpl<$Res>
    implements _$$DownloadEventCopyWith<$Res> {
  __$$DownloadEventCopyWithImpl(
      _$DownloadEvent _value, $Res Function(_$DownloadEvent) _then)
      : super(_value, (v) => _then(v as _$DownloadEvent));

  @override
  _$DownloadEvent get _value => super._value as _$DownloadEvent;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$DownloadEvent(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PersonImageEntity,
    ));
  }
}

/// @nodoc

class _$DownloadEvent implements DownloadEvent {
  const _$DownloadEvent(this.image);

  @override
  final PersonImageEntity image;

  @override
  String toString() {
    return 'PersonImageDownloaderEvent.download(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadEvent &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$DownloadEventCopyWith<_$DownloadEvent> get copyWith =>
      __$$DownloadEventCopyWithImpl<_$DownloadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonImageEntity image) download,
  }) {
    return download(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PersonImageEntity image)? download,
  }) {
    return download?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonImageEntity image)? download,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadEvent value) download,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadEvent value)? download,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadEvent value)? download,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class DownloadEvent implements PersonImageDownloaderEvent {
  const factory DownloadEvent(final PersonImageEntity image) = _$DownloadEvent;

  @override
  PersonImageEntity get image;
  @override
  @JsonKey(ignore: true)
  _$$DownloadEventCopyWith<_$DownloadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonImageDownloaderState {
  bool? get isLoading => throw _privateConstructorUsedError;
  PersonImageEntity? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonImageDownloaderStateCopyWith<PersonImageDownloaderState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonImageDownloaderStateCopyWith<$Res> {
  factory $PersonImageDownloaderStateCopyWith(PersonImageDownloaderState value,
          $Res Function(PersonImageDownloaderState) then) =
      _$PersonImageDownloaderStateCopyWithImpl<$Res>;
  $Res call({bool? isLoading, PersonImageEntity? image});
}

/// @nodoc
class _$PersonImageDownloaderStateCopyWithImpl<$Res>
    implements $PersonImageDownloaderStateCopyWith<$Res> {
  _$PersonImageDownloaderStateCopyWithImpl(this._value, this._then);

  final PersonImageDownloaderState _value;
  // ignore: unused_field
  final $Res Function(PersonImageDownloaderState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PersonImageEntity?,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonImageDownloaderStateCopyWith<$Res>
    implements $PersonImageDownloaderStateCopyWith<$Res> {
  factory _$$_PersonImageDownloaderStateCopyWith(
          _$_PersonImageDownloaderState value,
          $Res Function(_$_PersonImageDownloaderState) then) =
      __$$_PersonImageDownloaderStateCopyWithImpl<$Res>;
  @override
  $Res call({bool? isLoading, PersonImageEntity? image});
}

/// @nodoc
class __$$_PersonImageDownloaderStateCopyWithImpl<$Res>
    extends _$PersonImageDownloaderStateCopyWithImpl<$Res>
    implements _$$_PersonImageDownloaderStateCopyWith<$Res> {
  __$$_PersonImageDownloaderStateCopyWithImpl(
      _$_PersonImageDownloaderState _value,
      $Res Function(_$_PersonImageDownloaderState) _then)
      : super(_value, (v) => _then(v as _$_PersonImageDownloaderState));

  @override
  _$_PersonImageDownloaderState get _value =>
      super._value as _$_PersonImageDownloaderState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_PersonImageDownloaderState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PersonImageEntity?,
    ));
  }
}

/// @nodoc

class _$_PersonImageDownloaderState implements _PersonImageDownloaderState {
  const _$_PersonImageDownloaderState({this.isLoading, this.image});

  @override
  final bool? isLoading;
  @override
  final PersonImageEntity? image;

  @override
  String toString() {
    return 'PersonImageDownloaderState(isLoading: $isLoading, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonImageDownloaderState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_PersonImageDownloaderStateCopyWith<_$_PersonImageDownloaderState>
      get copyWith => __$$_PersonImageDownloaderStateCopyWithImpl<
          _$_PersonImageDownloaderState>(this, _$identity);
}

abstract class _PersonImageDownloaderState
    implements PersonImageDownloaderState {
  const factory _PersonImageDownloaderState(
      {final bool? isLoading,
      final PersonImageEntity? image}) = _$_PersonImageDownloaderState;

  @override
  bool? get isLoading;
  @override
  PersonImageEntity? get image;
  @override
  @JsonKey(ignore: true)
  _$$_PersonImageDownloaderStateCopyWith<_$_PersonImageDownloaderState>
      get copyWith => throw _privateConstructorUsedError;
}
