import 'package:docdoc/core/helpers/enums.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/features/dashboard/ui/widgets/dashboard_app_bar.dart';
import 'package:docdoc/features/dashboard/ui/widgets/dashboard_banner.dart';
import 'package:docdoc/features/home/logic/cubit/home_cubit.dart';
import 'package:docdoc/features/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is DashboardError) {
          context.showMessage(
            message: state.error,
            requestState: RequestState.error,
          );
        }
        if (state is DashboardSuccess) {}
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 16.0.h,
            ),
            child: const Column(
              children: [
                DashboardAppBar(),
                DashboardBanner(),
              ],
            ),
          ),
        );
      },
    );
  }
}
