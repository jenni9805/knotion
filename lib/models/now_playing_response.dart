import 'dart:convert';
import 'models.dart';

class NowPlayingResponse {
  NowPlayingResponse({
    required this.error,
    required this.limit,
    required this.offset,
    required this.numberOfPageResults,
    required this.numberOfTotalResults,
    required this.statusCode,
    required this.results,
    required this.version,
  });

  String error;
  int limit;
  int offset;
  int numberOfPageResults;
  int numberOfTotalResults;
  int statusCode;
  List<Serie> results;
  String version;

  factory NowPlayingResponse.fromJson(String str) =>
      NowPlayingResponse.fromMap(json.decode(str));

  factory NowPlayingResponse.fromMap(Map<String, dynamic> json) =>
      NowPlayingResponse(
        error: json["error"],
        limit: json["limit"],
        offset: json["offset"],
        numberOfPageResults: json["number_of_page_results"],
        numberOfTotalResults: json["number_of_total_results"],
        statusCode: json["status_code"],
        results: List<Serie>.from(json["results"].map((x) => Serie.fromMap(x))),
        version: json["version"],
      );
}

