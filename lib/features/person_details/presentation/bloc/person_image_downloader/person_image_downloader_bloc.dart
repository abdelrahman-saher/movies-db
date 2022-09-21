// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:themovie/features/person_details/domain/entities/person_image.dart';
import 'package:themovie/features/person_details/domain/usecases/download_image_usecase.dart';

part 'person_image_downloader_event.dart';
part 'person_image_downloader_state.dart';
part 'person_image_downloader_bloc.freezed.dart';

@injectable
class PersonImageDownloaderBloc
    extends Bloc<PersonImageDownloaderEvent, PersonImageDownloaderState> {
  final DownloadImageUseCase _downloadImageUseCase;
  PersonImageDownloaderBloc(this._downloadImageUseCase)
      : super(PersonImageDownloaderState.initial()) {
    on<PersonImageDownloaderEvent>((event, emit) async {
      if (event is DownloadEvent) {
        emit(state.copyWith(
          isLoading: true,
          image: event.image,
        ));
        await _downloadImageUseCase(event.image);
        emit(state.copyWith(isLoading: false));
      }
    });
  }
}
