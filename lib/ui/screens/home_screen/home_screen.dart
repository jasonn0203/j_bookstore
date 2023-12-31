import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_bookstore/core/colors.dart';
import 'package:js_bookstore/core/constraints.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          'Happy reading !',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          Padding(
            padding: AppConstraints.kHorizontalPadding,
            child: Icon(
              Iconsax.search_normal,
              color: AppColor.primaryColor,
            ),
          )
        ],
      ),
      body: Center(
        child: Text("Home screen"),
      ),
    );
  }
}
