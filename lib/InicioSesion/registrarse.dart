
import 'package:aplicacion/widgets/cajatextfield.dart';
import 'package:flutter/material.dart';
import '../widgets/Verificar.dart';

class Registrarse extends StatelessWidget {
  Registrarse({Key? key}) : super(key: key);

  final TextEditingController telefonoControlador = TextEditingController();
  final TextEditingController apodoControlador = TextEditingController();

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
                    'Para registrarse, vamos a ingresar su número de teléfono!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 80,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/mexico.png',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "+52",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                      height: 45,
                      width: 245,
                      child: Field(
                        controller: telefonoControlador,
                        text: "Número télefonico",
                        textInputType: TextInputType.phone,
                        obscure: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 45,
                  width: 400,
                  child: Field(
                    controller: apodoControlador,
                    text: "Apodo",
                    textInputType: TextInputType.text,
                    obscure:false,
                  ),
                ),
                const SizedBox(height: 40),
                Verificar(telefonoControlador: telefonoControlador,
                  apodoControlador: apodoControlador,
                numeroTelefono: telefonoControlador.text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



