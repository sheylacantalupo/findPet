import 'package:find_pet/app/components/fp_elevated_button.dart';
import 'package:find_pet/app/components/fp_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InicialView extends StatelessWidget {
  const InicialView({super.key});

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFDBD4E),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: _mediaQuery.size.height - _mediaQuery.padding.top,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 100, // Largura desejada do logo
                          height: 100, // Altura desejada do logo
                          child: SvgPicture.asset(
                            'assets/logo.svg', // Caminho do logo
                            fit: BoxFit
                                .contain, // Ajusta a logo dentro do SizedBox
                          ),
                        ),
                      ),
                      const Text(
                        "Encontre o cuidador ideal para seu pet!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF424242),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      TextFormSearch(
                        controller: TextEditingController(),
                        borderColor: Color(0xFFF5F5F5),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        suffix: Icon(Icons.search, color: Colors.white,),
                      ),

                      FPElevatedButton(
                        child: const Text(
                          "Buscar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const Divider(
                    color: Color(0xFF757575),
                    indent: 16,
                    endIndent: 16,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Área do cuidador",
                      style: TextStyle(
                        color: Color(0xFF424242),
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  FPElevatedButton(
                    child: const Text(
                      "Cadastre-se",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFF59245)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
