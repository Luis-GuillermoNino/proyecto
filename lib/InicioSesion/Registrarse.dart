import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/Caja.dart';
import '../widgets/Verificar.dart';
import 'ConfirmarNum.dart';

class registrarse extends StatelessWidget {
  registrarse({Key? key}) : super(key: key);

  TextEditingController telefonoControlador = TextEditingController();

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
                    'Para registrarse, vamos a ingresar su número de teléfono!',
                    style: TextStyle(color: Colors.black,
                      fontSize: 19,
                      //fontWeight: FontWeight.,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Api de lada
                const Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 80,
                      child: FormaCaja(),
                    ),
                    // Cambiar por Field
                    SizedBox(width:15),
                    SizedBox(
                      height: 45,
                      width: 245,
                      child: FormaCaja(),
                    ),
                  ],
                ),
                /*Field(controller: telefonoControlador,
                  text: 'Número telefónico',
                  textInputType: TextInputType.phone,
                  obscure: false,
                ),*/

                const SizedBox(height: 40),
                const verificar(),
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

