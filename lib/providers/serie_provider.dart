import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:knotionapp/models/models.dart';

class SerieProvider extends ChangeNotifier {
  String _baseUrl = 'comicvine.gamespot.com';
  String _apiKey = 'c8f3205709f5765914e9662cf5298c12e6f3488e';
  String _format = 'json';

  SerieProvider() {
    print("Provider de serie inicializado");

    this.getSeries();
  }

  //Consulta de las series
  getSeries() async {
    var url = Uri.https(
        _baseUrl, 'api/series_list', {'api_key': _apiKey, 'format': _format});
    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    print(nowPlayingResponse.results[0].name);
  }
}
