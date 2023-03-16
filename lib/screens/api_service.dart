import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    late final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var w in webtoons) {
        // final toon = WebtoonModel.fromJason(w);
        // print(toon.title);
        // webtoonInstances.add(toon);
        webtoonInstances.add(WebtoonModel(w));
      }
      print(webtoonInstances);
      return webtoonInstances;
    }
    throw Error();
  }
}
