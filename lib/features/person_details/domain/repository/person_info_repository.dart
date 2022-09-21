import 'package:dartz/dartz.dart';
import 'package:themovie/features/person_details/domain/entities/person_info.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

import '../../../../core/error/failures.dart';

abstract class PersonInfoRepository {
  Future<Either<Failure, PersonInfoEntity>> getInfo({PersonEntity? person});
}
