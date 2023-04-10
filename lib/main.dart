import 'package:flutter/material.dart';
import 'package:flutter_sliver_tutorial/routes.dart';
import 'package:flutter_sliver_tutorial/screens/sliver_persistant_header_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRoutes();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
