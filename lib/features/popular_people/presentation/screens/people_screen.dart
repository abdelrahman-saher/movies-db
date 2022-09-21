import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themovie/core/utils/app_strings.dart';
import 'package:themovie/features/popular_people/presentation/bloc/get_people_data/get_people_data_bloc.dart';
import 'package:themovie/features/popular_people/presentation/widgets/people_page.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../injection.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocProvider(
        create: (context) => getIt<GetPeopleDataBloc>()
          ..add(const GetPeopleDataEvent.initLoad()),
        child: const PeoplePage(),
      ),
    );
  }
}
