// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/person_details/presentation/screens/person_info_screen.dart'
    as _i2;
import '../../features/popular_people/domain/entities/person.dart' as _i5;
import '../../features/popular_people/presentation/screens/people_screen.dart'
    as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    PeopleScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PeopleScreen(),
      );
    },
    PersonInfoScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PersonInfoScreenRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.PersonInfoScreen(
          args.person,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          PeopleScreenRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          PersonInfoScreenRoute.name,
          path: '/person-info-screen',
        ),
      ];
}

/// generated route for
/// [_i1.PeopleScreen]
class PeopleScreenRoute extends _i3.PageRouteInfo<void> {
  const PeopleScreenRoute()
      : super(
          PeopleScreenRoute.name,
          path: '/',
        );

  static const String name = 'PeopleScreenRoute';
}

/// generated route for
/// [_i2.PersonInfoScreen]
class PersonInfoScreenRoute
    extends _i3.PageRouteInfo<PersonInfoScreenRouteArgs> {
  PersonInfoScreenRoute({
    required _i5.PersonEntity person,
    _i4.Key? key,
  }) : super(
          PersonInfoScreenRoute.name,
          path: '/person-info-screen',
          args: PersonInfoScreenRouteArgs(
            person: person,
            key: key,
          ),
        );

  static const String name = 'PersonInfoScreenRoute';
}

class PersonInfoScreenRouteArgs {
  const PersonInfoScreenRouteArgs({
    required this.person,
    this.key,
  });

  final _i5.PersonEntity person;

  final _i4.Key? key;

  @override
  String toString() {
    return 'PersonInfoScreenRouteArgs{person: $person, key: $key}';
  }
}
