import 'package:themovie/features/popular_people/data/models/people_container.dart';

abstract class PeopleRemoteDataSource {
  Future<PeopleContainerModel> getPeople(int? page);
}
