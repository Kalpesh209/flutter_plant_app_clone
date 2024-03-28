import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_images.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_strings.dart';
import 'package:flutter_plant_clone_app/Presentation/Widgets/bottom_navigation_bar_widget.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  navigateToNextScreen(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (builder) => BottomNavBarWidget()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 25),
          Text(
            AppStrings.lets,
            style: TextStyle(
              fontSize: 22.0,
              letterSpacing: 1.8,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 5),
          Text(
            AppStrings.bring,
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 16,
              letterSpacing: 1.8,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 450,
            width: 450,
            child: Image.asset(
              AppImages.assets1,
            ),
          ),
          SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              navigateToNextScreen(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 80.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: AppColors.greenColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                AppStrings.signIn,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              AppStrings.createAccount,
              style: TextStyle(
                color: AppColors.blackColor.withOpacity(0.7),
                fontSize: 16,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              AppStrings.forgotPass,
              style: TextStyle(
                color: AppColors.blackColor.withOpacity(0.4),
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
