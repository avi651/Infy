import 'dart:convert';

import 'package:http/http.dart';
import 'package:infy_dem/models/home_model.dart';

class APIClient {
  APIClient(this._client) {
    _baseUrl = 'https://dl.dropboxusercontent.com';
    _homeData = "/s/2iodh4vg0eortkl/facts.json";
  }

  late final Client _client;

  late String _baseUrl;
  late String _homeData;

  Future<HomeModel> fetchHomeData() async {
    final url = _baseUrl + _homeData;

    final response = await _client.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return HomeModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
