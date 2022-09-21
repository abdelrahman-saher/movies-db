import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themovie/core/utils/app_fonts.dart';
import 'package:themovie/core/utils/app_strings.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../injection.dart';
import '../bloc/get_person_info/get_person_info_bloc.dart';
import '../bloc/person_image_downloader/person_image_downloader_bloc.dart';
import '../widgets/person_info_page.dart';

class PersonInfoScreen extends StatelessWidget {
  final PersonEntity person;
  const PersonInfoScreen(this.person, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          AppStrings.personInfoScreenTitle,
          style: AppFonts.labelL.copyWith(
            color: AppColors.dark,
          ),
        ),
        backgroundColor: AppColors.background,
        elevation: 3,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: AppColors.dark,
          ),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<GetPersonInfoBloc>()
              ..add(
                GetPersonInfoEvent.getInfo(person),
              ),
          ),
          BlocProvider(create: (context) => getIt<PersonImageDownloaderBloc>()),
        ],
        child: const PersonInfoPage(),
      ),
    );
  }
}
