import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_app/utils/app_urls.dart';

class CustomAppBarWithLogo extends StatelessWidget implements PreferredSizeWidget{

  final void Function() onPressed;
  const CustomAppBarWithLogo({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: GestureDetector(
          onTap : onPressed,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: context.isDarkMode
                    ? Colors.white.withValues(alpha: 0.04)
                    : Colors.black.withValues(alpha: 0.04),
                shape: BoxShape.circle),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 15.sp,
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: SvgPicture.asset(AppUrls.appLogoVector, width: 110.w,),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
