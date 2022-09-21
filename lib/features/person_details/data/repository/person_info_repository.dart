import 'package:dartz/dartz.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:themovie/core/error/failure_adapter.dart';
import 'package:themovie/core/error/failures.dart';
import 'package:themovie/features/person_details/data/data/remote/person_info_remote_data_source.dart';
import 'package:themovie/features/person_details/data/models/person_image.dart';
import 'package:themovie/features/person_details/data/models/person_info.dart';
import 'package:themovie/features/person_details/domain/entities/person_image.dart';
import 'package:themovie/features/person_details/domain/entities/person_info.dart';
import 'package:themovie/features/person_details/domain/repository/person_info_repository.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

import '../../../../core/error/exceptions.dart';

@Injectable(as: PersonInfoRepository)
class PersonInfoRepositoryImpl implements PersonInfoRepository {
  final PersonInfoRemoteDataSource _remoteDataSource;
  PersonInfoRepositoryImpl(
    this._remoteDataSource,
  );

  @override
  Future<Either<Failure, PersonInfoEntity>> getInfo(
      {PersonEntity? person}) async {
    try {
      PersonInfoModel people = await _remoteDataSource.getInfo(person!.id!);
      return right(people.toDomain(person));
    } catch (e) {
      return Left(FailureAdapter.fromException(e as Exception));
    }
  }

  @override
  Future<Either<Failure, List<PersonImageEntity>>> getImages(
      {PersonEntity? person}) async {
    try {
      List<PersonImageModel> images =
          await _remoteDataSource.getImages(person!.id!);
      return right(images.map((e) => e.toDomain()).toList());
    } catch (e) {
      return Left(FailureAdapter.fromException(e as Exception));
    }
  }

  @override
  Future<Either<Failure, Unit>> downloadImage(
      {PersonImageEntity? image}) async {
    try {
      await ImageDownloader.downloadImage(image!.image!.imageUrl());
      return const Right(unit);
    } catch (e) {
      return Left(FailureAdapter.fromException(e as Exception));
    }
  }
}
