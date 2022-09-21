// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:themovie/core/global/image.dart';

class PersonEntity extends Equatable {
  final String? id, name, department;
  final RemoteImageProvider? profileImage;
  const PersonEntity({
    this.id,
    this.name,
    this.department,
    this.profileImage,
  });

  @override
  List<Object> get props => [
        id!,
        name!,
      ];
}
