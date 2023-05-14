import 'package:aplicacion/InicioSesion/Contrasena.dart';
import 'package:flutter/material.dart';
import '../edicion/colores.dart';
import 'package:aplicacion/Conexion/conexion.dart';

class Verificar extends StatelessWidget {
  final TextEditingController telefonoControlador;
  final TextEditingController apodoControlador;

  const Verificar({Key? key, required this.telefonoControlador, required this.apodoControlador, required String numeroTelefono}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        String numeroTelefono = telefonoControlador.text;
        String apodo = apodoControlador.text;

        if (apodo.isEmpty) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Error'),
              content: Text('El campo de apodo no puede estar vacío.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Aceptar'),
                ),
              ],
            ),
          );
        } else if (numeroTelefono.length == 10 && numeroTelefono.startsWith('951')) {
          final conn = await Conexion.getConnection();
          final consulta = await conn.query(
            'SELECT COUNT(*) as count FROM datosCliente WHERE numerotelefono = ?',
            [numeroTelefono],
          );
          final count = consulta.first['count'] as int;
          await conn.close();
          if (count > 0) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Error'),
                content: Text('El número telefónico ya está registrado.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Aceptar'),
                  ),
                ],
              ),
            );
          } else {
            final conn = await Conexion.getConnection();
            await conn.query(
              'INSERT INTO datosCliente (apodo, numerotelefono, contrasena) VALUES (?, ?, ?)',
              [apodo, numeroTelefono, ''],
            );
            await conn.close();

            Navigator.push(context, MaterialPageRoute(builder: (context) => contrasena(numeroTelefono: numeroTelefono,)));
          }
        } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Error'),
              content: Text('Verifique si se escribió correctamente el número telefónico.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Aceptar'),
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
          'Verificar',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
