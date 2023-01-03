import 'package:flutter/material.dart';
import 'package:grofast/utils/instances/app_instances.dart';
import 'package:grofast/utils/routes/app_routes.dart';

void main() {
  setUpLocators();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grofast',
      onGenerateRoute: AppRoutes.generateRote,
      initialRoute: RouteName.splashPage,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
