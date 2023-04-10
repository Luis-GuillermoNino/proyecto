import 'dart:async';
import 'package:aplicacion/widgets/Siguiente_confContra.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/LineaTextField.dart';
import '../widgets/Siguiente.dart';
import 'ConfirmarContra.dart';


class contrasena extends StatelessWidget {
  contrasena({Key? key}) : super(key: key);

  TextEditingController contraControlador = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(

            width: double.infinity,
            padding: const EdgeInsets.only(top: 2, left: 25, right: 25,bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Establece una contraseña para tu cuenta B APP',
                    style: TextStyle(color: Colors.black,
                      fontSize: 19,
                      //fontWeight: FontWeight.,
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                Container(
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Cuenta B APP',
                    style: TextStyle(color: Colors.black26,
                      fontSize: 15,
                      //fontWeight: FontWeight.,
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                // Recuperar número y recuperar los ultimos 4 números
                Container(
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    '*****1390',
                    style: TextStyle(color: Colors.black54,
                      fontSize: 16, fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Container(
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Contraseña',
                    style: TextStyle(color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Linea(controller: contraControlador,
                    text: "Contraseña (8 caracteres, incluyendo letras y números)",
                    textInputType: TextInputType.text,
                    obscure: true
                ),
                const SizedBox(height: 33),
                Linea(controller: contraControlador,
                    text: "Confirmar contraseña" ,
                    textInputType: TextInputType.text,
                    obscure: true,
                ),
                /*Field(controller: telefonoControlador,
                  text: 'Número telefónico',
                  textInputType: TextInputType.phone,
                  obscure: false,
                ),*/
                const SizedBox(height: 50),
                const siguiente_confContra(),
              ],
            ),
          ),
        ),
      ),

      /* bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('¿No tienes una cuenta?',
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
      ),*/
    );
  }
}

