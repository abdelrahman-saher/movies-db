import 'package:themovie/features/person_details/data/models/person_image.dart';
import 'package:themovie/features/person_details/data/models/person_info.dart';

abstract class PersonInfoRemoteDataSource {
  Future<PersonInfoModel> getInfo(String? id);
  Future<List<PersonImageModel>> getImages(String? id);
}
