import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_app/routes/app_routes.dart';
import 'package:spotify_clone_app/utils/app_colors.dart';
import 'package:spotify_clone_app/utils/app_urls.dart';
import 'package:spotify_clone_app/widgets/custom_elevated_btn.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppUrls.getStartedBGImg,
              fit: BoxFit.cover, width: double.infinity.w),
          SizedBox(
            height: double.infinity.h,
            width: double.infinity.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppUrls.appLogoVector, width: 196.w),
                  Spacer(),
                  Text('gssTitle'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white, fontSize: 25.sp)),
                  Gap(30.h),
                  Text(
                    'gssSubTitle'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.darkGreyClr),
                    textAlign: TextAlign.center,
                  ),
                  Gap(30.h),
                  CustomElevatedBtn(onPressed: () {
                    Get.toNamed(AppRoutes.chooseModeScreen);
                  }, name: 'gssBtn'.tr)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
