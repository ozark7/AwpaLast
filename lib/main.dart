import 'package:awpa/src/ui/pages/app.dart';
import 'package:awpa/src/ui/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().light,
      darkTheme: AppTheme().dark,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: 'AWPA',
      home: const MyAppForm(),
    );
  }
}
