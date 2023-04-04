import 'dart:async';
import 'package:aplicacion/rutas.dart';
import 'package:aplicacion/search_ruta_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as location;
import 'package:fluttertoast/fluttertoast.dart';

class Mapa extends StatefulWidget {
  const Mapa({Key? key}) : super(key: key);

  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  final location.Location _location = location.Location();

  static const CameraPosition cameraPosition = CameraPosition(
    target: LatLng(17.07842707862655, -96.7425141036388),
    zoom: 25,
  );

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  // Lista temporal de rutas
  final List<Rutas> rutas = [    const Rutas('Ruta1'),    const Rutas('Ruta2'),    const Rutas('Ruta3'),    const Rutas('Ruta4'),  ];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: TextField(
            controller: _searchController,
            onTap: () async {
              final Rutas? result = await showSearch(
                context: context,
                delegate: SearchRutasDelegate(rutas),
              );
              if (result != null) {
                setState(() {
                  _searchController.text = result.ruta_nombre;
                });
              }
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Buscar',
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0, vertical: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.search_rounded),
            ),
            style: const TextStyle(fontSize: 18.0, color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          //AQUI LA BARRA LATERAL
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () async {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.cleaning_services_sharp),
              onPressed: () {},
            ),
          ],
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onTap: (LatLng latLng) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              initialCameraPosition: cameraPosition,
              mapType: MapType.normal,
              mapToolbarEnabled: false,
              zoomControlsEnabled: false,
              compassEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton.extended(
                onPressed: _regresar,
                backgroundColor: const Color(0xFFB5DA66),
                label: const Text('Yo'),
                icon: const Icon(Icons.emoji_people_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }



  Future<void> _regresar() async {


    final bool isLocationEnabled = await _location.serviceEnabled();
    if (!isLocationEnabled) {
      Fluttertoast.showToast(
        msg: "Hey! prende tu servicio de ubicación",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: const Color(0xFFB5DA66),
        textColor: Colors.white,
        fontSize: 30.0,

      );
      return;
    }

    final GoogleMapController controller = await _controller.future;
    final location.LocationData locationData = await _location.getLocation();
    final CameraPosition currentPosition = CameraPosition(
      target: LatLng(locationData.latitude!, locationData.longitude!),
      zoom: 18,
    );
    controller.animateCamera(CameraUpdate.newCameraPosition(currentPosition));
  }
}
