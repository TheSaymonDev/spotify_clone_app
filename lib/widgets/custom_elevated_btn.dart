import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone_app/utils/app_colors.dart';

class CustomElevatedBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final double? width;
  final double? height;

  const CustomElevatedBtn({
    super.key,
    required this.onPressed,
    required this.name,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity.w,
      height: height ?? 92.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryClr,
            foregroundColor: AppColors.lightBgClr,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r)),
            padding: EdgeInsets.zero),
        onPressed: onPressed,
        child: Text(name, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.darkFontClr)),
      ),
    );
  }
}