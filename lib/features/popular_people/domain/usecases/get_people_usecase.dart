import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:themovie/features/popular_people/domain/entities/people_container.dart';

import '../../../../core/error/failures.dart';
import '../repository/people_repository.dart';

@injectable
class GetPeopleUseCase {
  GetPeopleUseCase(this._pepoleRepository);
  final PepoleRepository _pepoleRepository;
  Future<Either<Failure, PeopleContainer>> call({int? page}) async {
    return await _pepoleRepository.getPeople(page: page!);
  }
}
