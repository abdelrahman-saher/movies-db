import 'package:equatable/equatable.dart';

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

  PersonModel toDomain() {
    return PersonModel(
      id,
      name,
      department,
      profileImage,
    );
  }

  @override
  List get props => [
        id,
        name,
      ];
}
