
import 'package:aplicacion/mapa/mapa.dart';
import 'package:flutter/material.dart';
import '../Conexion/conexion.dart';
import '../edicion/colores.dart';

class SiguienteConfContra extends StatelessWidget {
  final TextEditingController contraControlador;
  final TextEditingController contraConfControlador;
  final String numeroTelefono;

  const SiguienteConfContra({
    Key? key,
    required this.contraControlador,
    required this.contraConfControlador,
    required this.numeroTelefono,
  }) : super(key: key);

  bool verificarContrasenas() {
    String contrasena = contraControlador.text;
    String confirmarContrasena = contraConfControlador.text;

    if (contrasena.isEmpty || confirmarContrasena.isEmpty) {
      return false;
    }

    return contrasena == confirmarContrasena;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (verificarContrasenas()) {
          final conn = await Conexion.getConnection();
          await conn.query(
            '''
  UPDATE datosCliente
  SET contrasena = '${contraControlador.text}'
  WHERE numerotelefono = '$numeroTelefono'
''',
          );
          await conn.close();
          // ignore: use_build_context_synchronously
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Registro exitoso'),
              content: const Text('¡Tu registro ha sido exitoso!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Mapa(),
                      ),
                    );
                  },
                  child: const Text('Aceptar'),
                ),
              ],
            ),
          );
        } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Error'),
              content: const Text('Las contraseñas no coinciden. Inténtalo de nuevo.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aceptar'),
                ),
              ],
            ),
          );
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: 47,
        decoration: BoxDecoration(
          color: Colores.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: const Text(
          'Siguiente',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
