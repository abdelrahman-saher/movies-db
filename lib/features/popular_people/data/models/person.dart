import 'package:equatable/equatable.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

import '../../../../core/global/image.dart';

class PersonModel extends Equatable {
  final String? id, name, department;
  final RemoteImageProvider? profileImage;

  const PersonModel(
    this.id,
    this.name,
    this.department,
    this.profileImage,
  );

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
      json["id"].toString(),
      json['name'].toString(),
      json['known_for_department'].toString(),
      RemoteImageProvider(json['profile_path'].toString()),
    );
  }

  PersonEntity toDomain() {
    return PersonEntity(
      id: id,
      name: name,
      department: department,
      profileImage: profileImage,
    );
  }

  @override
  List get props => [
        id,
        name,
      ];
}
