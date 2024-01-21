import 'package:docdoc/features/home/data/models/home_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.dashboardLoading() = DashboardLoading;
  const factory HomeState.dashboardSuccess(HomeResponse data) =
      DashboardSuccess<T>;
  const factory HomeState.dashboardError({required String error}) =
      DashboardError<T>;
}
