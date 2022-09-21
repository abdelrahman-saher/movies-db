import 'package:auto_route/auto_route.dart';
import 'package:themovie/features/person_details/presentation/screens/person_info_screen.dart';
import 'package:themovie/features/popular_people/presentation/screens/people_screen.dart';

@MaterialAutoRouter(replaceInRouteName: "Route", routes: [
  AutoRoute(
    page: PeopleScreen,
    initial: true,
  ),
  AutoRoute(
    page: PersonInfoScreen,
  ),
])
class $AppRouter {}
