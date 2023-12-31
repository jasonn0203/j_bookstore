import 'package:flutter/material.dart';

import 'package:js_bookstore/core/constraints.dart';
import 'package:js_bookstore/ui/widgets_common/app_button.dart';
import 'package:js_bookstore/ui/widgets_common/app_text_field.dart';
import 'package:js_bookstore/ui/widgets_common/custom_appbar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = AppConstraints.getHeight(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: "Register",
        textStyle: Theme.of(context).textTheme.titleMedium,
      ),
      body: Padding(
        padding: AppConstraints.kHorizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: height <= 640
                    ? AppConstraints.kSpaceBetweenItemsMd
                    : AppConstraints.kSpaceBetweenItemsLg * 3),
            //Text to remind to fill in
            Text(
              "Please fill your details to signup.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            SizedBox(height: AppConstraints.kSpaceBetweenItemsLg * 2),

            //TextField to login ( username, email, password, confirm pw )
            Form(
              child: Column(
                children: [
                  //Username
                  const AppTextField(hintText: "Username"),
                  SizedBox(height: AppConstraints.kSpaceBetweenItemsXL),
                  //Email
                  const AppTextField(
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: AppConstraints.kSpaceBetweenItemsXL),
                  //Password
                  AppTextField(
                    hintText: "Password",
                    obscureText: true,
                  ),
                  SizedBox(height: AppConstraints.kSpaceBetweenItemsXL),
                  //Confirm PW
                  const AppTextField(
                    hintText: "Confirm Password",
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ],
              ),
            ),
            SizedBox(height: AppConstraints.kSpaceBetweenItemsXXL),

            //Login Button
            AppButton(
              width: AppConstraints.getWidth(context),
              content: 'Register',
              onTap: () {},
            ),
            Spacer(),

            //Forgot pw
            Container(
              padding:
                  EdgeInsets.only(bottom: AppConstraints.kSpaceBetweenItemsMd),
              width: AppConstraints.getWidth(context),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'already a member?, sign in.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
