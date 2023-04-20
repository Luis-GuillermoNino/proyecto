import 'package:aplicacion/mapa/rutas.dart';
import 'package:flutter/material.dart';

class SearchRutasDelegate extends SearchDelegate<Rutas>{
  final List<Rutas> rutas;
  SearchRutasDelegate(this.rutas);

  @override
  String get searchFieldLabel => 'Ruta';

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[      IconButton(        icon: const Icon(Icons.clear),        onPressed: () {          query = '';        },      ),    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        query = '';
        FocusScope.of(context).unfocus();
        close(context,const Rutas(''));
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<Rutas> suggestions = rutas
        .where((Rutas ruta) =>
        ruta.rutaNombre.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(suggestions[index].rutaNombre),
          onTap: () {
            FocusScope.of(context).unfocus();
            close(context, suggestions[index]);
          },
        );
      },
    );
  }
}