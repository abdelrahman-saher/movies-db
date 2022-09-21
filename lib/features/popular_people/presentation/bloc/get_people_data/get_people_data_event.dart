part of 'get_people_data_bloc.dart';

@freezed
class GetPeopleDataEvent with _$GetPeopleDataEvent {
  const factory GetPeopleDataEvent.initLoad() = InitialLoadPeopleEvent;
  const factory GetPeopleDataEvent.loadMore({int? page}) = LoadMorePeopleEvent;
}
