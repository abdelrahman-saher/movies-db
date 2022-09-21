import 'package:injectable/injectable.dart';
import 'package:themovie/features/popular_people/data/data/remote/people_remote_data_source.dart';
import 'package:themovie/features/popular_people/data/models/people_container.dart';

import '../../../../../core/API/api_consumer.dart';
import '../../../../../core/API/end_points.dart';

@Injectable(as: PeopleRemoteDataSource)
class PeopleRemoteDataSourceImpl implements PeopleRemoteDataSource {
  ApiConsumer apiConsumer;
  PeopleRemoteDataSourceImpl(this.apiConsumer);
  @override
  Future<PeopleContainerModel> getPeople(int? page) async {
    print(page);
    Map<String, dynamic> result = Map<String, dynamic>.from(
      await apiConsumer.get(EndPoints.peopleUrl, queryParameters: {
        "page": page!,
      }),
    );
    return PeopleContainerModel.fromJson(result, page);
  }
}
