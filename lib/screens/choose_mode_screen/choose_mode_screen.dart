import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_app/routes/app_routes.dart';
import 'package:spotify_clone_app/screens/choose_mode_screen/widgets/mode_widget.dart';
import 'package:spotify_clone_app/utils/app_urls.dart';
import 'package:spotify_clone_app/widgets/custom_elevated_btn.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppUrls.chooseModeBGImg,
              width: double.infinity.w, fit: BoxFit.cover),
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
                  Text('cmsTitle'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white, fontSize: 25.sp)),
                  Gap(50.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ModeWidget(
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.dark);
                          },
                          vectorPath: AppUrls.moonVector,
                          name: 'cmsDarkMode'.tr),
                      ModeWidget(
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.light);
                          },
                          vectorPath: AppUrls.sunVector,
                          name: 'cmsLightMode'.tr)
                    ],
                  ),
                  Gap(50.h),
                  CustomElevatedBtn(onPressed: () {
                    Get.toNamed(AppRoutes.authScreen);
                  }, name: 'cmsContinueBtn'.tr)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
