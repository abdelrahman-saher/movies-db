import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themovie/core/utils/shared_components.dart';
import 'package:themovie/features/person_details/domain/entities/person_image.dart';
import 'package:themovie/features/person_details/presentation/bloc/person_image_downloader/person_image_downloader_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_manager.dart';

class PersonImageItem extends StatelessWidget {
  final PersonImageEntity image;

  const PersonImageItem(
    this.image, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonImageDownloaderBloc, PersonImageDownloaderState>(
      builder: (context, state) {
        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                showImageViewer(
                  context,
                  Image.network(image.image!.imageUrl()).image,
                  useSafeArea: true,
                );
              },
              child: CachedNetworkImage(
                imageUrl: image.image!.imageUrl(),
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
            Positioned(
              bottom: 5,
              right: 5,
              child: Container(
                color: AppColors.light.withOpacity(0.3),
                child: state.isLoading! && state.image! == image
                    ? AppComponents.load
                    : GestureDetector(
                        onTap: () {
                          BlocProvider.of<PersonImageDownloaderBloc>(context)
                              .add(PersonImageDownloaderEvent.download(image));
                        },
                        child: Icon(
                          Icons.download,
                          size: 30,
                          color: AppColors.background,
                        ),
                      ),
              ),
            )
          ],
        );
      },
    );
  }
}
