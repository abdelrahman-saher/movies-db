// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:themovie/core/error/failures.dart';
import 'package:themovie/features/person_details/domain/entities/person_info.dart';
import 'package:themovie/features/person_details/domain/usecases/get_images_usecase.dart';
import 'package:themovie/features/person_details/domain/usecases/get_info_usecase.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

import '../../../domain/entities/person_image.dart';

part 'get_person_info_event.dart';
part 'get_person_info_state.dart';
part 'get_person_info_bloc.freezed.dart';

@injectable
class GetPersonInfoBloc extends Bloc<GetPersonInfoEvent, GetPersonInfoState> {
  final GetPersonInfoUseCase _getPersonInfoUseCase;
  final GetPersonImagesUseCase _getPersonImagesUseCase;
  GetPersonInfoBloc(
    this._getPersonInfoUseCase,
    this._getPersonImagesUseCase,
  ) : super(GetPersonInfoState.initial()) {
    on<GetPersonInfoEvent>((event, emit) async {
      if (event is GetInfoEvent) {
        emit(state.copyWith(isLoading: true));
        final Either<Failure, PersonInfoEntity> result =
            await _getPersonInfoUseCase(event.person);
        final Either<Failure, List<PersonImageEntity>> imagesResult =
            await _getPersonImagesUseCase(event.person);

        emit(
          state.copyWith(
            result: optionOf(result),
            isLoading: false,
            images: imagesResult.getOrElse(() => []),
          ),
        );
      }
    });
  }
}
