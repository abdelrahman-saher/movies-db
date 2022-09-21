import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:themovie/features/person_details/domain/entities/person_image.dart';
import 'package:themovie/features/person_details/domain/repository/person_info_repository.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

import '../../../../core/error/failures.dart';

@injectable
class GetPersonImagesUseCase {
  GetPersonImagesUseCase(this._personInfoRepository);
  final PersonInfoRepository _personInfoRepository;
  Future<Either<Failure, List<PersonImageEntity>>> call(
      PersonEntity person) async {
    return await _personInfoRepository.getImages(person: person);
  }
}
