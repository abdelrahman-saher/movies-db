import 'package:themovie/core/error/failures.dart';

import 'exceptions.dart';

class FailureAdapter {
  static Failure fromException(Exception e) {
    switch (e.runtimeType) {
      case InternalServerErrorException:
        return ServerFailure((e as InternalServerErrorException).message);
      case NotFoundException:
        return ServerFailure((e as NoDataFoundFailure).message);
      case FetchDataException:
        return ServerFailure((e as NoDataFoundFailure).message);
      case BadRequestException:
        return ServerFailure((e as BadRequestFailure).message);
      case NoInternetConnectionException:
        return ServerFailure((e as NoInternetConnectoinFailure).message);
      default:
        return UnKnownFailure(e.toString());
    }
  }
}
