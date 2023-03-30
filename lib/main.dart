import 'package:flutter/material.dart';
import 'package:flutter_sliver_tutorial/routes.dart';
import 'package:flutter_sliver_tutorial/screens/sliver_persistant_header_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRoutes();

    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
