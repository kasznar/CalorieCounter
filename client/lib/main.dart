import 'package:client/routes.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Calorie counter',
      initialRoute: AppRoutes.home,
      theme: const CupertinoThemeData(brightness: Brightness.dark),
      routes: routes(context),
    );
  }
}