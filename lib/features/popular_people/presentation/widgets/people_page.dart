import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themovie/core/utils/app_colors.dart';
import 'package:themovie/core/utils/app_fonts.dart';
import 'package:themovie/core/utils/app_strings.dart';
import 'package:themovie/features/popular_people/presentation/bloc/get_people_data/get_people_data_bloc.dart';
import 'package:themovie/features/popular_people/presentation/widgets/person_item.dart';

import '../../../../core/utils/shared_components.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  int _page = 1;
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController()..addListener(_loadMore);
    super.initState();
  }

  void _loadMore() async {
    if (BlocProvider.of<GetPeopleDataBloc>(context).state.hasNewData! &&
        _controller.position.extentAfter < 100) {
      _page++;
      BlocProvider.of<GetPeopleDataBloc>(context).add(
        GetPeopleDataEvent.loadMore(
          page: _page,
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_loadMore);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPeopleDataBloc, GetPeopleDataState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(20.r),
          child: state.isLoading!
              ? Center(
                  child: AppComponents.load,
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      AppStrings.popularPeopleScreenTitle,
                      style: AppFonts.headerM.copyWith(
                        color: AppColors.dark,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Expanded(
                      child: ListView.builder(
                        controller: _controller,
                        itemBuilder: (context, index) {
                          return PersonItem(state.people![index]);
                        },
                        itemCount: state.people!.length,
                      ),
                    ),
                    if (state.isLoadingMore!)
                      Center(
                        child: AppComponents.load,
                      ),
                  ],
                ),
        );
      },
    );
  }
}
