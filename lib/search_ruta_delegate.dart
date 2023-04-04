import 'package:aplicacion/rutas.dart';
import 'package:flutter/material.dart';

class SearchRutasDelegate extends SearchDelegate<Rutas>{
  final List<Rutas> rutas;
  SearchRutasDelegate(this.rutas);

  @override
  String get searchFieldLabel => 'Ruta';

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
    return Center();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<Rutas> suggestions = rutas
        .where((Rutas ruta) =>
        ruta.ruta_nombre.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(suggestions[index].ruta_nombre),
          onTap: () {
            FocusScope.of(context).unfocus();
            close(context, suggestions[index]);
          },
        );
      },
    );
  }

}