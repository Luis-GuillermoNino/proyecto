import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listado {
  //int id;
  String nombre2;
  String foto2;
  //final Function() Presionar;
  Listado( this.nombre2, this.foto2, );

  Widget buildTexto(BuildContext context){
    return Text(
      nombre2,
      style:  const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold
      ),
    );
  }
}

final papel=[
  Listado( "documentos","hoja.png"),
  Listado( "Folletos", "menu.png"),
  Listado( "Revistas", "revista.png"),
  Listado( "Libros", "libro.png"),
  Listado( "Cuadernos ", "libro.png"),
  Listado( "Periódico","periodico.png"),
];

final carton=[
  Listado( "Caja de embalaje","caja.png"),
  Listado( "Caja de cereal", "cajacereal.png"),

];

final pet=[
  Listado( "Botella de agua ","comi.png"),
  Listado( "Botella de jugo", "huevo.png"),
];
final hdpe=[
  Listado( "Envase de leche ","comi.png"),
  Listado( "Detergente", "huevo.png"),
  Listado( "Yogurt", "yogur.png"),
];
final pp=[
  Listado( "Botella de suero","comi.png"),
  Listado( "Bote de yogurt de 1/2 L y 1L", "huevo.png"),
  Listado( "Tapas de garrafón", "huevo.png"),
];
final ferroso=[
  Listado( "Lata de atún","atun.png"),
  Listado( "Lata de sardinas", "huevo.png"),
  Listado( "Lata en conserva", "huevo.png"),
  Listado( "Alambre", "alambre.png"),
];
final aluminio=[
  Listado( "Refresco","latas.png"),
  Listado( "Té", "te.png"),
  Listado( "Cerveza", "lataCerveza.png"),
  Listado( "Desodorante en aerosol", "desodorante.png"),
];
final transparente=[
  Listado( "Botella de refresco","lataRefresco.png"),
  Listado( "Jugo", "jugo.png"),
  Listado( "Cerveza", "lataCerveza.png"),
  Listado( "Vino", "vino.png"),
  Listado( "Frascos", "huevo.png"),
];

final verde=[
  Listado( "Botellas color verde","botellaverde.png"),
];
final ambar=[
  Listado( "Botellas color ambar","botellaAmarila.png"),
];
final telas=[
  Listado( "Recortes de tela","recortes.png"),
  Listado( "Manteles", "huevo.png"),
  Listado( "Agujetas", "huevo.png"),
  Listado( "Sábanas", "sabanas.png"),
  Listado( "Recortes de tela","recortes.png"),
  Listado( "Edredones", "manta.png"),
  Listado( "Toallas", "toalla.png"),
  Listado( "Cortinas", "cortinas.png"),
  Listado( "Listones", "cinta.png"),
];
final ropa=[
  Listado( "Pantalones","pantalones.png"),
  Listado( "Blusa", "blusa.png"),
  Listado( "Chamarras", "chaqueta.png"),
  Listado( "Ropa interior", "ropaInterior.png"),
  Listado( "Calcetines","calcetines.png"),
];

final calzado=[
  Listado( "Tenis","detela.png"),
  Listado( "Zapatos de tela", "zapatos.png"),
];
final madera=[
  Listado( "Madera","madera.png"),
];