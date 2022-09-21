import 'package:auto_route/auto_route.dart';
import 'package:themovie/home.dart';

@MaterialAutoRouter(replaceInRouteName: "Route", routes: [
  AutoRoute(
    page: HomeScreen,
    initial: true,
  ),
])
class $AppRouter {}
