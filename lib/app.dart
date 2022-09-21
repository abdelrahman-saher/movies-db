import 'package:flutter/material.dart';

import 'config/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Movies App",
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
