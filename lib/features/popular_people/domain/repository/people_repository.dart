import 'package:dartz/dartz.dart';
import 'package:themovie/features/popular_people/domain/entities/people_container.dart';

import '../../../../core/error/failures.dart';

abstract class PepoleRepository {
  Future<Either<Failure, PeopleContainer>> getPeople({int page = 0});
}
