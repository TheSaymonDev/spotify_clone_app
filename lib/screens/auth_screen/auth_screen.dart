import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_app/routes/app_routes.dart';
import 'package:spotify_clone_app/utils/app_colors.dart';
import 'package:spotify_clone_app/utils/app_urls.dart';
import 'package:spotify_clone_app/widgets/custom_elevated_btn.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 56.h,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
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
      ),
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(AppUrls.topPatternImg)),
          Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(AppUrls.bottomPatternImg)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppUrls.authBGImg)),
          SizedBox(
            height: double.infinity.h,
            width: double.infinity.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Gap(180.h),
                  SvgPicture.asset(AppUrls.appLogoVector, width: 196.w),
                  Gap(60.h),
                  Text('asTitle'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 25.sp)),
                  Gap(30.h),
                  Text(
                    'asSubTitle'.tr,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: context.isDarkMode
                            ? AppColors.lightGreyClr
                            : AppColors.darkGreyClr),
                    textAlign: TextAlign.center,
                  ),
                  Gap(40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomElevatedBtn(
                          onPressed: () {
                            Get.toNamed(AppRoutes.signUpScreen);
                          },
                          name: 'asRegisterBtn'.tr,
                          width: 150.w,
                          height: 75.h),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.signInScreen);
                          },
                          child: Text('asSignInBtn'.tr,
                              style: Theme.of(context).textTheme.titleLarge))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
