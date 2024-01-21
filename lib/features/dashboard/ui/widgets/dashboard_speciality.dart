import 'dart:math';

import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/dashboard/ui/widgets/dashboard_speciality_item.dart';
import 'package:docdoc/features/home/data/models/home_response.dart';
import 'package:docdoc/features/home/logic/cubit/home_cubit.dart';
import 'package:docdoc/features/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardSpecilaity extends StatelessWidget {
  const DashboardSpecilaity({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is DashboardSuccess) {
          List<HomeData> specialities = state.data.data;
          return SizedBox(
            height: 60.h,
            child: ListView.separated(
              itemBuilder: (context, index) {
                int randomIndex = Random().nextInt(4) + 1;
                return DashboardSpecilaityItem(
                  speciality: specialities[index],
                  image: 'assets/icons/speciality$randomIndex.png',
                );
              },
              separatorBuilder: (context, index) => horiontalSpace(16.0),
              itemCount: specialities.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        }
        return Container();
      },
    );
  }
}
