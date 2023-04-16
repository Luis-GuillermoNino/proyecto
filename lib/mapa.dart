import 'dart:async';
import 'package:aplicacion/Conexion/consulta.dart';
import 'package:aplicacion/datos_rutas.dart';
import 'package:aplicacion/edicion/colores.dart';
import 'package:aplicacion/menu/menu.dart';
import 'package:aplicacion/rutas.dart';
import 'package:aplicacion/search_ruta_delegate.dart';
import 'package:aplicacion/trazado_rutas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as location;

class Mapa extends StatefulWidget {
  const Mapa({Key? key}) : super(key: key);
  @override
  MapaState createState() => MapaState();
}

class MapaState extends State<Mapa>  {
  //Variables
  int contador = 1;
  LatLng? _currentPosition;
  final Set<Marker> _marker = {};
  final location.Location _location = location.Location();
  static const CameraPosition cameraPosition = CameraPosition(
    target: LatLng(17.07842707862655, -96.7425141036388),
    zoom: 16,
  );
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  // Lista temporal de rutas
  List<Rutas> rutas = RutasData.rutas;
  final TextEditingController _searchController = TextEditingController();
  //trazado de prueba
  List<LatLng> polylineCoordinates = [];
  Set<Polyline> _polylines = <Polyline>{};
  late PolylinePoints polylinePoints;
  late LatLng currentLocation;
  late LatLng destinationLocation;
  late LatLng destino3;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      repetirMarcadores();
    }
    );
    polylinePoints = PolylinePoints();
    setInitialLocation();
    _searchController.addListener(() {
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    marcadoresBD();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        drawer: const menulateral(),
        appBar: AppBar(
          titleSpacing: 0.0,
          title: TextField(
            controller: _searchController,
            onTap: () async {
            buscarRuta();
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Buscar',
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0, vertical: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.search_rounded),
            ),
            style: const TextStyle(fontSize: 18.0, color: Colors.black),
          ),
          backgroundColor: Colores.mainColor,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          //AQUI LA BARRA LATERAL
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      WillPopScope(
                        onWillPop: () async {
                          return false;
                        },
                        child: const menulateral(),
                      ),
                ),
              );
            }
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(CupertinoIcons.bell),
              onPressed: () {},
            ),
          ],
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              markers:_marker,
              polylines:_polylines,
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
                setPolylines();
              },
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton.extended(
                onPressed: _regresar,
                backgroundColor: Colores.mainColor,
                label: const Text('Yo'),
                icon: const Icon(Icons.emoji_people_rounded),

              ),
            ),
          ],
        ),
      ),
    );
  }
  //Funciones
  Future<void> _regresar() async {
    final BitmapDescriptor personIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(devicePixelRatio: 2.5),
      'assets/personamarcador.png',
    );
    final GoogleMapController controller = await _controller.future;
    final location.LocationData locationData = await _location.getLocation();
    final LatLng currentPosition = LatLng(
      locationData.latitude!,
      locationData.longitude!,
    );
    final CameraPosition cameraPosition = CameraPosition(
      target: currentPosition,
      zoom: 15,
    );
    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    Marker newMarker = Marker(
      markerId:  const MarkerId('current'),
      position: currentPosition,
      icon: personIcon,
    );

    setState(() {
      _marker.add(newMarker);
      _currentPosition = currentPosition;
    });
  }
  Future<void> marcadoresBD() async {
    final coordenadas = await Consulta.obtenerCoordernadas(contador);
    final latitud = coordenadas['latitud'];
    final longitud = coordenadas['longitud'];
    final LatLng posicion = LatLng(latitud!, longitud!);
    final Marker marker = Marker(
      markerId: const MarkerId('1'),
      position: posicion,
      infoWindow: const InfoWindow(title: 'Marcador desde la base de datos'),
    );
    setState(() {
      _marker.add(marker);
    });
    final GoogleMapController controller = await _controller.future;
  }
  void buscarRuta()async {
    final Rutas? result = await showSearch(
      context: context,
      delegate: SearchRutasDelegate(rutas),
    );
    if (result != null) {
      setState(() {
        _searchController.text = result.rutaNombre;
      });
    }
  }
  void repetirMarcadores() {
    marcadoresBD();
    contador = (contador % 10) + 1;
  }
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
  void setInitialLocation() {
    currentLocation = TrazoRutas.rutaPrueba[0];
    destinationLocation = TrazoRutas.rutaPrueba[1];
    destino3 = TrazoRutas.rutaPrueba[2];
  }
  void setPolylines() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyCiXkGqo00VRBUq4PNWiYOUsX9P60FFAeA",
        PointLatLng(currentLocation.latitude, currentLocation.longitude),
        PointLatLng(destinationLocation.latitude, destinationLocation.longitude),
    );
    PolylineResult result2 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCiXkGqo00VRBUq4PNWiYOUsX9P60FFAeA",
      PointLatLng(destinationLocation.latitude, destinationLocation.longitude),
      PointLatLng(destino3.latitude, destino3.longitude),
    );
    PolylineResult result3 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCiXkGqo00VRBUq4PNWiYOUsX9P60FFAeA",
      PointLatLng(destino3.latitude, destino3.longitude),
      PointLatLng(currentLocation.latitude, currentLocation.longitude)
    );
    if(result.status ==  'OK') {
      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    }
    if(result2.status ==  'OK') {
      for (var point in result2.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    }
    if(result3.status ==  'OK') {
      for (var point in result3.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    }

      setState(() {
        _polylines.add(
            Polyline(
                width:10,
                polylineId: const PolylineId('ruta_prueba'),
                color: Colores.mainColor,
                points: polylineCoordinates
            )
        );
      }
      );
    }
}


