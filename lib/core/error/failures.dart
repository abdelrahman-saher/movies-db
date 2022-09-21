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

class UnKnownFailure extends Failure {
  const UnKnownFailure(message) : super(message);
}

class ValueFailure extends Failure {
  const ValueFailure(message) : super(message);
}
