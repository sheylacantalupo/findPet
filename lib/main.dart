import 'package:find_pet/app/modules/inicial/views/inicial_view.dart';
import 'package:find_pet/theme/theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomThemeData.light(),
      //darkTheme: CustomThemeData.dark(),
      home: const InicialView(),
    );
  }
}


