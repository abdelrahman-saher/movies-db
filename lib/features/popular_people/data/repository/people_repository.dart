import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:themovie/core/error/failures.dart';
import 'package:themovie/features/popular_people/data/data/remote/people_remote_data_source.dart';
import 'package:themovie/features/popular_people/data/models/people_container.dart';
import 'package:themovie/features/popular_people/domain/entities/people_container.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/repository/people_repository.dart';

@Injectable(as: PepoleRepository)
class PepoleRepositoryImpl implements PepoleRepository {
  final PeopleRemoteDataSource _remoteDataSource;
  PepoleRepositoryImpl(
    this._remoteDataSource,
  );

  @override
  Future<Either<Failure, PeopleContainer>> getPeople({int? page}) async {
    try {
      PeopleContainerModel people = await _remoteDataSource.getPeople(page);
      return right(people.toDomain());
    } on InternalServerErrorException catch (e) {
      return Left(ServerFailure(e.message));
    } on NotFoundException catch (e) {
      return Left(NoDataFoundFailure(e.message));
    } on FetchDataException catch (e) {
      return Left(NoDataFoundFailure(e.message));
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(e.message));
    } on NoInternetConnectionException catch (e) {
      return Left(NoInternetConnectoinFailure(e.message));
    } catch (e) {
      return Left(UnKnownFailure(e.toString()));
    }
  }
}
