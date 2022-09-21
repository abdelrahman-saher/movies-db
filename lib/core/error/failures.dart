import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure(message) : super(message);
}

class NoDataFoundFailure extends Failure {
  const NoDataFoundFailure(message) : super(message);
}

class BadRequestFailure extends Failure {
  const BadRequestFailure(message) : super(message);
}

class UnKnownFailure extends Failure {
  const UnKnownFailure(message) : super(message);
}

class NoInternetConnectoinFailure extends Failure {
  const NoInternetConnectoinFailure(message) : super(message);
}

class ValueFailure extends Failure {
  const ValueFailure(message) : super(message);
}
