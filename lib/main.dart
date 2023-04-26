import 'package:flutter/material.dart';
import 'package:flutter_survival_architecture_sample/di/di_setup.dart';
import 'package:flutter_survival_architecture_sample/routes.dart';

void main() async {
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
