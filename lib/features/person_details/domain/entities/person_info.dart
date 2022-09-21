// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

class PersonInfoEntity extends Equatable {
  final String? placeOfBirth, biography;
  final DateTime? dateOfBirth;
  final PersonEntity? basicInfo;
  const PersonInfoEntity({
    this.basicInfo,
    this.placeOfBirth,
    this.biography,
    this.dateOfBirth,
  });

  @override
  List<Object> get props => [
        basicInfo!,
      ];
}
