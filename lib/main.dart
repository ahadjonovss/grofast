import 'package:flutter/material.dart';
import 'package:grofast/utils/instances/app_instances.dart';
import 'package:grofast/utils/routes/app_routes.dart';
import 'package:grofast/view_models/authorization_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  setUpLocators();
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>AuthorizationViewModel())
    ],
      child: MyApp()));
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
