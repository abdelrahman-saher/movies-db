part of 'person_image_downloader_bloc.dart';

@freezed
class PersonImageDownloaderState with _$PersonImageDownloaderState {
  const factory PersonImageDownloaderState({
    @required bool? isLoading,
    @required PersonImageEntity? image,
  }) = _PersonImageDownloaderState;
  factory PersonImageDownloaderState.initial() => const PersonImageDownloaderState(
        isLoading: false,
        image: null,
      );
}
