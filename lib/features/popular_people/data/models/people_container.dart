import 'package:equatable/equatable.dart';
import 'package:themovie/features/popular_people/data/models/person.dart';

class PeopleContainerModel extends Equatable {
  final bool? hasMore;
  final List<PersonModel>? people;

  const PeopleContainerModel(
    this.hasMore,
    this.people,
  );

  factory PeopleContainerModel.fromJson(Map<String, dynamic> json, int page) {
    return PeopleContainerModel(
      page < json["total_pages"],
      (json["results"] as List).map((e) => PersonModel.fromJson(e)).toList(),
    );
  }

  PeopleContainerModel toDomain() {
    return PeopleContainerModel(
      hasMore,
      people!.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  List get props => [
        hasMore,
        people,
      ];
}
