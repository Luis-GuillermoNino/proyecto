import 'package:aplicacion/widgets/siguiente_confcontra.dart';
import 'package:flutter/material.dart';
import '../widgets/lineatextfield.dart';

class Contrasena extends StatelessWidget {

  final String numeroTelefono;
  Contrasena({Key? key, required this.numeroTelefono}) : super(key: key);

  final TextEditingController contraControlador = TextEditingController();
  final TextEditingController contraConfControlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 2, left: 25, right: 25, bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Establece una contraseña para tu cuenta ASURA',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      //fontWeight: FontWeight.,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Cuenta ASURA',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 15,
                      //fontWeight: FontWeight.,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    numeroTelefono,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Contraseña',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Linea(
                  controller: contraControlador,
                  text: "Contraseña (8 caracteres, incluyendo letras y números)",
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 33),
                Linea(
                  controller: contraConfControlador,
                  text: "Confirmar contraseña",
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 50),
                SiguienteConfContra(contraControlador: contraControlador, contraConfControlador: contraConfControlador,numeroTelefono: numeroTelefono),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
