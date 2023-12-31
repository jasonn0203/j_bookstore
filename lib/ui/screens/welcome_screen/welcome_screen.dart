import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_bookstore/core/colors.dart';

import 'package:js_bookstore/core/constraints.dart';
import 'package:js_bookstore/core/image_helper.dart';

import 'package:js_bookstore/ui/widgets_common/app_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //Background Image
          Positioned(
            top: 0,
            left: 0,
            height: height * 0.5,
            width: width,
            child: Image.asset(
              ImageHelper.welcomeBackgroundImg,
              fit: BoxFit.cover,
            ),
          ),

          // Logo and Title in the center
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImageHelper.logo,
                  height: 135,
                ),
                SizedBox(height: AppConstraints.kSpaceBetweenItemsLg),
                Padding(
                  padding: AppConstraints.kHorizontalPadding,
                  child: Text(
                    "Read more and stress less with our online book shopping app. Shop from anywhere you are and discover titles that you love. Happy reading!",
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          // Get started button and Register button here

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: AppConstraints.kHorizontalPadding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: AppConstraints.kSpaceBetweenItemsMd),
                  AppButton(
                    width: width,
                    content: 'Get Started',
                    onTap: () {
                      _navigateTo(context, '/signup');
                    },
                  ),
                  SizedBox(height: AppConstraints.kSpaceBetweenItemsMd),
                  AppButton(
                    width: width,
                    content: 'Register',
                    color: Colors.white,
                    onTap: () {
                      _navigateTo(context, '/signup');
                    },
                  ),
                  SizedBox(height: AppConstraints.kSpaceBetweenItemsMd),
                  // Skip to home button
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/', (route) => false);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Skip',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(Iconsax.arrow_right, color: AppColor.primaryColor),
                      ],
                    ),
                  ),
                  SizedBox(height: AppConstraints.kSpaceBetweenItemsMd),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
