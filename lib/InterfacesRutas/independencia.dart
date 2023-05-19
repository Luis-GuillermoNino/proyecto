import 'package:aplicacion/edicion/colores.dart';
import 'package:aplicacion/mapa/mapa.dart';
import 'package:flutter/material.dart';

class Independencia extends StatefulWidget {
  const Independencia ({super.key});

  @override
  _IndependenciaState createState() => _IndependenciaState();
}

class _IndependenciaState extends State<Independencia> {
  final List<String> rastreoPuntos = [
    'Parada 1',
    'Parada 2',
    'Parada 3',
    'Parada 4',
    'Parada 5',
  ];

  bool isStarred = false;

  void toggleStarred() {
    setState(() {
      isStarred = !isStarred;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RUTA INDEPENDENCIA', style: TextStyle(color: Colors.black)),
        backgroundColor: Colores.mainColor,
        leading: IconButton(
          icon: const Icon(Icons.house),color: Colors.black,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mapa()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              '                      400',
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 8),
            const Text(
              '                Centro-Independencia',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colores.mainColor,
                    onPrimary: Colors.black,
                  ),
                  child: const Text('Info'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Mapa()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colores.mainColor,
                    onPrimary: Colors.black,
                  ),
                  child: const Text('Mapa'),
                ),
                IconButton(
                  onPressed: toggleStarred,
                  icon: Icon(
                    isStarred ? Icons.star : Icons.star_border,
                    color: Colors.yellow, // Color del icono
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: rastreoPuntos.length,
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.grey,
                  height: 1,
                ),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: index == 0
                        ? Container(
                      width: 30,
                      height: 30,
                      child: Image.asset('assets/camionBasura.png'),
                    )
                        : SizedBox(width: 24),
                    title: Row(
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colores.mainColor,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(rastreoPuntos[index]),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
