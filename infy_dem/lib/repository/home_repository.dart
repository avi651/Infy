import 'package:infy_dem/models/home_model.dart';
import 'package:infy_dem/services/api_services.dart';

class HomeRepository {
  HomeRepository(this._homeClient);
  late final APIClient _homeClient;
  Future<HomeModel> fetchHomeData() => _homeClient.fetchHomeData();
}
