import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:infy_dem/application/home_cubit.dart';
import 'package:infy_dem/repository/home_repository.dart';
import 'package:infy_dem/services/api_services.dart';

final getIt = GetIt.instance;

void init() {
  registerDependencies();
}

void registerDependencies() {
  getIt.registerLazySingleton(() => Client());
  getIt.registerFactory(() => HomeRepository(getIt()));
  getIt.registerFactory(() => APIClient(getIt()));
  getIt.registerFactory(() => HomeCubit(getIt()));
}
