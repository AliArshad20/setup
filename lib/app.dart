import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup/presentation/screens/home.dart';

import 'data/providers/theme_provider.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: themeProvider.themeMode,
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}


