// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

import '../../../../core/global/image.dart';

class PersonImageEntity extends Equatable {
  final RemoteImageProvider? image;
  final int? height;
  const PersonImageEntity({
    this.height,
    this.image,
  });

  @override
  List<Object> get props => [
        image!,
        height!,
      ];
}
