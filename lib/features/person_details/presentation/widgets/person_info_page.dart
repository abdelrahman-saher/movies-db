import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:themovie/features/person_details/domain/entities/person_info.dart';
import 'package:themovie/features/person_details/presentation/bloc/get_person_info/get_person_info_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/shared_components.dart';

class PersonInfoPage extends StatelessWidget {
  const PersonInfoPage({super.key});

  PersonInfoEntity getInfo(Option<Either<Failure, PersonInfoEntity>> p) {
    return p.fold(() => PersonInfoEntity.empty(),
        (a) => a.fold((l) => PersonInfoEntity.empty(), (r) => r));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPersonInfoBloc, GetPersonInfoState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(20.r),
          child: state.isLoading!
              ? Center(
                  child: AppComponents.load,
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200.r,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.r),
                              child: CachedNetworkImage(
                                imageUrl: getInfo(state.result!)
                                    .basicInfo!
                                    .profileImage!
                                    .imageUrl(),
                                fit: BoxFit.cover,
                                height: 200.r,
                                width: 200.r,
                                placeholder: (context, url) => Image.asset(
                                  ImgAssets.placeholder,
                                  fit: BoxFit.cover,
                                  height: 200.r,
                                  width: 200.r,
                                ),
                                errorWidget: (context, url, error) => Center(
                                  child: Image.asset(
                                    ImgAssets.placeholder,
                                    fit: BoxFit.cover,
                                    height: 200.r,
                                    width: 200.r,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    getInfo(state.result!).basicInfo!.name!,
                                    style: AppFonts.labelL.copyWith(
                                      color: AppColors.dark,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Birthday: ",
                                          style: AppFonts.labelM.copyWith(
                                            color: AppColors.dark,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: DateFormat("dd/MM/yyyy").format(
                                              getInfo(state.result!)
                                                  .dateOfBirth!),
                                          style: AppFonts.labelM.copyWith(
                                            color: AppColors.light,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Place: ",
                                          style: AppFonts.labelM.copyWith(
                                            color: AppColors.dark,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: getInfo(state.result!)
                                              .placeOfBirth!,
                                          style: AppFonts.labelM.copyWith(
                                            color: AppColors.light,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Department: ",
                                          style: AppFonts.labelM.copyWith(
                                            color: AppColors.dark,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: getInfo(state.result!)
                                              .basicInfo!
                                              .department!,
                                          style: AppFonts.labelM.copyWith(
                                            color: AppColors.light,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "About",
                        style: AppFonts.labelL.copyWith(
                          color: AppColors.dark,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        getInfo(state.result!).biography!,
                        style: AppFonts.paragraphMS.copyWith(
                          color: AppColors.light,
                        ),
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
