part of 'get_person_info_bloc.dart';

@freezed
class GetPersonInfoState with _$GetPersonInfoState {
  const factory GetPersonInfoState({
    @required bool? isLoading,
    @required Option<Either<Failure, PersonInfoEntity>>? result,
  }) = _GetPersonInfoState;
  factory GetPersonInfoState.initial() => GetPersonInfoState(
        isLoading: true,
        result: none(),
      );
}
