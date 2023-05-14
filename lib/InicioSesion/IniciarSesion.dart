import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../edicion/colores.dart';
import '../widgets/CajaTextField.dart';
import '../widgets/Ingresar.dart';
import 'Registrarse.dart';

class IniciarSes extends StatelessWidget {
  IniciarSes({Key? key}) : super(key: key);
  final TextEditingController telefControlador = TextEditingController();
  final TextEditingController contraControlador = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 2, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'LOGO',
                    style: TextStyle(color: Colores.mainColor,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                const SizedBox(height: 45),
                //Ingresar número de teléfono
                Field(controller: telefControlador,
                  text: 'Número telefónico',
                  textInputType: TextInputType.phone,
                  obscure: false,
                ),

                const SizedBox(height: 10),
                //Ingresar contraseña
                Field(controller: contraControlador,
                  text: 'Contraseña',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 30),
                const BotonInicio(),

                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 40),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  WillPopScope(
                                    onWillPop: () async {
                                      return false;
                                    },
                                    child: registrarse(),
                                  ),
                            ),
                          );
                        },
                        child: Text(
                          "Registrarse"
                              "",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      SizedBox(width: 40, height: 25),
                      GestureDetector(
                        onTap: () {
                          // Cuando se presiones olvide contra
                        },
                        child: Text(
                          "Olvidé mi contraseña",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('¿No tienes una cuenta?',
            style: TextStyle(color: Colors.black54),
            ),
            InkWell(
              child: Text(
                  ' Registrarse',

                style: TextStyle(
                  color: Colores.mainColor,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
