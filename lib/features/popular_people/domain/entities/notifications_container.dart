import 'package:equatable/equatable.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

class PeopleContainer extends Equatable {
  final List<PersonEntity>? people;
  final bool? hasMore;

  const PeopleContainer({
    this.people,
    this.hasMore,
  });

  @override
  List<Object> get props => [
        people!,
        hasMore!,
      ];
}
