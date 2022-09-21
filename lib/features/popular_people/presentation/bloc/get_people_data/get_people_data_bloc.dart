// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:themovie/features/popular_people/domain/entities/people_container.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';
import 'package:themovie/features/popular_people/domain/usecases/get_people_usecase.dart';

import '../../../../../core/error/failures.dart';

part 'get_people_data_event.dart';
part 'get_people_data_state.dart';
part 'get_people_data_bloc.freezed.dart';

@injectable
class GetPeopleDataBloc extends Bloc<GetPeopleDataEvent, GetPeopleDataState> {
  final GetPeopleUseCase _getPeopleUseCase;
  GetPeopleDataBloc(this._getPeopleUseCase)
      : super(GetPeopleDataState.initial()) {
    on<GetPeopleDataEvent>((event, emit) async {
      if (event is LoadMorePeopleEvent) {
        emit(state.copyWith(isLoadingMore: true));
        final Either<Failure, PeopleContainer> result =
            await _getPeopleUseCase(page: event.page);
        
        result.fold(
          (l) => null,
          (r) {
            emit(
              state.copyWith(
                people: [...state.people!, ...r.people!],
                hasNewData: r.hasMore,
              ),
            );
          },
        );
        emit(state.copyWith(isLoadingMore: false));
      } else if (event is InitialLoadPeopleEvent) {
        emit(state.copyWith(isLoading: true));
        final Either<Failure, PeopleContainer> result =
            await _getPeopleUseCase();
        result.fold(
          (l) => null,
          (r) {
            emit(
              state.copyWith(
                people: r.people!,
                hasNewData: r.hasMore!,
              ),
            );
          },
        );
        emit(state.copyWith(isLoading: false));
      }
    });
  }
}
