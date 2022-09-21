part of 'get_people_data_bloc.dart';

@freezed
class GetPeopleDataState with _$GetPeopleDataState {
  factory GetPeopleDataState({
    @required bool? isLoading,
    @required bool? isLoadingMore,
    @required bool? hasNewData,
    @required List<PersonEntity>? people,
  }) = _GetPeopleDataState;
  factory GetPeopleDataState.initial() => GetPeopleDataState(
        isLoading: false,
        isLoadingMore: false,
        people: [],
        hasNewData: true,
      );
}
