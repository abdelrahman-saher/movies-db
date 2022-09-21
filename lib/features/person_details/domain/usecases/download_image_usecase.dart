import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:themovie/features/person_details/domain/entities/person_image.dart';
import 'package:themovie/features/person_details/domain/repository/person_info_repository.dart';

import '../../../../core/error/failures.dart';

@injectable
class DownloadImageUseCase {
  DownloadImageUseCase(this._personInfoRepository);
  final PersonInfoRepository _personInfoRepository;
  Future<Either<Failure, Unit>> call(PersonImageEntity image) async {
    return await _personInfoRepository.downloadImage(image: image);
  }
}
