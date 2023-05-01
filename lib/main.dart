import 'package:flutter/material.dart';
import 'package:recipe_app/screens/tabs.dart';


final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 131, 57, 0),
    brightness: Brightness.dark,
  ),
);

void main() => runApp(MealsApp());

class MealsApp extends StatelessWidget {
  const MealsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Meals App',
      home: TabsScreen(),
    );
  }
}
