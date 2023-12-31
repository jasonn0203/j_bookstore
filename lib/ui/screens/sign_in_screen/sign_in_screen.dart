import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:js_bookstore/core/constraints.dart';
import 'package:js_bookstore/ui/widgets_common/app_button.dart';
import 'package:js_bookstore/ui/widgets_common/app_text_field.dart';

import 'package:js_bookstore/ui/widgets_common/custom_appbar.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obsecureText = true;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _obsecureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Get Started !",
        textStyle: Theme.of(context).textTheme.titleMedium,
      ),
      body: Padding(
        padding: AppConstraints.kHorizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppConstraints.kSpaceBetweenItemsLg * 3),
            //Text to remind to fill in
            Text(
              "Please fill your details to login.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            SizedBox(height: AppConstraints.kSpaceBetweenItemsLg * 2),

            //TextField to login ( username, password )
            Form(
              child: Column(
                children: [
                  AppTextField(hintText: "Username/Email"),
                  SizedBox(height: AppConstraints.kSpaceBetweenItemsXL),
                  AppTextField(
                    hintText: "Password",
                    obscureText: _obsecureText,
                    suffixIcon: InkWell(
                      onTap: () {
                        _toggleShowPassword();
                      },
                      child: Icon(
                        _obsecureText ? Iconsax.eye : Iconsax.eye_slash5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppConstraints.kSpaceBetweenItemsXXL),

            //Login Button
            AppButton(
              width: AppConstraints.getWidth(context),
              content: 'Get Started',
              onTap: () {},
            ),
            SizedBox(height: AppConstraints.kSpaceBetweenItemsXL),

            //Forgot pw
            Container(
              width: AppConstraints.getWidth(context),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'forgot password ?',
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

  void _toggleShowPassword() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }
}
