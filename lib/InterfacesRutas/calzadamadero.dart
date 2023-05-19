import 'package:aplicacion/edicion/colores.dart';
import 'package:flutter/material.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({super.key});

  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
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
        title: const Text('RUTA CALZADA MADERO', style: TextStyle(color: Colors.black)),
        backgroundColor: Colores.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              '                      430',
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 8),
            const Text(
              '                Calzada Madero-Independencia',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  onPressed: () {},
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
