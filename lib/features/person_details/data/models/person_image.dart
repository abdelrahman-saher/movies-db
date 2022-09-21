import 'package:equatable/equatable.dart';

import '../../../../core/global/image.dart';
import '../../domain/entities/person_image.dart';

class PersonImageModel extends Equatable {
  final int? height;
  final RemoteImageProvider? image;

  const PersonImageModel(
    this.height,
    this.image,
  );

  factory PersonImageModel.fromJson(Map<String, dynamic> json) {
    return PersonImageModel(
      json['height'],
      RemoteImageProvider(json['file_path'].toString()),
    );
  }

  PersonImageEntity toDomain() {
    return PersonImageEntity(image: image, height: height);
  }

  @override
  List get props => [
        image,
        height,
      ];
}
