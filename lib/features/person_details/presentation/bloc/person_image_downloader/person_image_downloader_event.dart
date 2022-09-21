part of 'person_image_downloader_bloc.dart';

@freezed
class PersonImageDownloaderEvent with _$PersonImageDownloaderEvent {
  const factory PersonImageDownloaderEvent.download(PersonImageEntity image) =
      DownloadEvent;
}
