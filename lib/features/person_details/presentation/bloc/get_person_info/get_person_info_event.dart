part of 'get_person_info_bloc.dart';

@freezed
class GetPersonInfoEvent with _$GetPersonInfoEvent {
  const factory GetPersonInfoEvent.getInfo(PersonEntity person) = GetInfoEvent;
}
