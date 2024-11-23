import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone_app/utils/app_colors.dart';

class ModeWidget extends StatelessWidget {
  final void Function() onTap;
  final String vectorPath;
  final String name;

  const ModeWidget(
      {super.key,
      required this.onTap,
      required this.vectorPath,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
              height: 70.h,
              width: 70.w,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.darkGreyClr),
              child: SvgPicture.asset(vectorPath)),
        ),
        Gap(16.h),
        Text(name,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.darkFontClr))
      ],
    );
  }
}
