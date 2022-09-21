import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themovie/config/routes/router.gr.dart';
import 'package:themovie/core/utils/app_colors.dart';
import 'package:themovie/core/utils/app_fonts.dart';
import 'package:themovie/features/popular_people/domain/entities/person.dart';

import '../../../../core/utils/assets_manager.dart';

class PersonItem extends StatelessWidget {
  final PersonEntity _person;

  const PersonItem(
    this._person, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(PersonInfoScreenRoute(person: _person)),
      child: Container(
        margin: EdgeInsets.only(bottom: 8.h),
        color: AppColors.background,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _person.name!,
                    style: AppFonts.labelL.copyWith(
                      color: AppColors.dark,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    _person.department!,
                    style: AppFonts.labelM.copyWith(
                      color: AppColors.light,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: CachedNetworkImage(
                imageUrl: _person.profileImage!.imageUrl(),
                fit: BoxFit.cover,
                height: 100.r,
                width: 100.r,
                placeholder: (context, url) => Image.asset(
                  ImgAssets.placeholder,
                  fit: BoxFit.cover,
                  height: 100.r,
                  width: 100.r,
                ),
                errorWidget: (context, url, error) => Center(
                  child: Image.asset(
                    ImgAssets.placeholder,
                    fit: BoxFit.cover,
                    height: 100.r,
                    width: 100.r,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
