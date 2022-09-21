// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:themovie/core/API/end_points.dart';

class RemoteImageProvider extends Equatable {
  final String? _filePath;
  const RemoteImageProvider(
    this._filePath,
  );
  String imageUrl() => EndPoints.imageUrl(_filePath ?? "");
  @override
  List<Object> get props => [
        _filePath!,
      ];
}
