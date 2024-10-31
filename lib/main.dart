import 'package:find_pet/app/components/fp_elevated_button.dart';
import 'package:find_pet/app/components/fp_outlined_button.dart';
import 'package:find_pet/app/components/fp_text_form_field.dart';
import 'package:find_pet/app/components/fp_text_form_search.dart';
import 'package:find_pet/app/components/fp_text_title.dart';
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FPTextTitle(text: "Pesquise", size: size),
            FPTextFormSearch(
              fillColor: Colors.white,
            ),
            FPElevatedButton(
              child: Text(
                "Buscar",
                style: TextStyle(color: Colors.white), // Define a cor do texto
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(0xFF2D384C),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
