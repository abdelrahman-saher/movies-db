import 'package:injectable/injectable.dart';
import 'package:themovie/features/person_details/data/data/remote/person_info_remote_data_source.dart';
import 'package:themovie/features/person_details/data/models/person_image.dart';
import 'package:themovie/features/person_details/data/models/person_info.dart';

import '../../../../../core/API/api_consumer.dart';
import '../../../../../core/API/end_points.dart';

@Injectable(as: PersonInfoRemoteDataSource)
class PersonInfoRemoteDataSourceImpl implements PersonInfoRemoteDataSource {
  ApiConsumer apiConsumer;
  PersonInfoRemoteDataSourceImpl(this.apiConsumer);

  @override
  Future<PersonInfoModel> getInfo(String? id) async {
    Map<String, dynamic> result = Map<String, dynamic>.from(
      await apiConsumer.get(
        EndPoints.peopleInfoUrl(id!),
      ),
    );
    return PersonInfoModel.fromJson(result);
  }

  @override
  Future<List<PersonImageModel>> getImages(String? id) async {
    Map<String, dynamic> result = Map<String, dynamic>.from(
      await apiConsumer.get(
        EndPoints.peopleImagesUrl(id!),
      ),
    );
    return (result["profiles"] as List)
        .map((e) => PersonImageModel.fromJson(e))
        .toList();
  }
}
