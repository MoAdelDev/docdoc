import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:docdoc/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  void emitDashboardData() async {
    emit(const HomeState.dashboardLoading());
    final response = await homeRepo.getHomeDataData();
    response.when(
      success: (homeResponse) {
        emit(HomeState.dashboardSuccess(homeResponse));
      },
      failure: (errorHandler) {
        emit(HomeState.dashboardError(
            error: errorHandler.apiErrorModel.message ?? ''));
      },
    );
  }
}
