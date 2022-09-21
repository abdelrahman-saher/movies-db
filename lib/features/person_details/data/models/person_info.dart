import 'package:equatable/equatable.dart';
import 'package:themovie/features/person_details/domain/entities/person_info.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

class PersonInfoModel extends Equatable {
  final String? placeOfBirth, biography;
  final DateTime? dateOfBirth;

  const PersonInfoModel(
    this.placeOfBirth,
    this.biography,
    this.dateOfBirth,
  );

  factory PersonInfoModel.fromJson(Map<String, dynamic> json) {
    return PersonInfoModel(
        json["place_of_birth"].toString(),
        json['biography'].toString(),
        DateTime.parse(json["birthday"].toString()));
  }

  PersonInfoEntity toDomain(PersonEntity basicInfo) {
    return PersonInfoEntity(
      basicInfo: basicInfo,
      biography: biography,
      dateOfBirth: dateOfBirth,
      placeOfBirth: placeOfBirth,
    );
  }

  @override
  List get props => [
        placeOfBirth,
        dateOfBirth,
        biography,
      ];
}
