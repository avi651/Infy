import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infy_dem/repository/home_repository.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(const HomeStateInitial());
  late final HomeRepository _repository;

  Future<void> getHomeAPI() async {
    try {
      emit(const HomeStateLoading());
      final home = await _repository.fetchHomeData();
      emit(HomeStateSuccess(home));
    } on Exception catch (e) {
      emit(HomeStateError(e.toString()));
    }
  }
}
