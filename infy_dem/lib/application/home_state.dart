import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infy_dem/models/home_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeStateInitial;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.success(HomeModel homeModel) = HomeStateSuccess;
  const factory HomeState.error(String message) = HomeStateError;
}
