import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_bookstore/core/colors.dart';
import 'package:js_bookstore/core/constraints.dart';
import 'package:js_bookstore/ui/widgets_common/app_text_field.dart';
import 'package:js_bookstore/ui/widgets_common/category_item.dart';
import 'package:js_bookstore/ui/widgets_common/custom_appbar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: AppConstraints.kPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 56,
                  child: Row(
                    children: [
                      //Search box and filter
                      _searchBox(),
                      SizedBox(
                        width: 8,
                      ),
                      //Filter button
                      _filterButton(),
                    ],
                  ),
                ),
                //Category text
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 32,
                ),
                //Category grid
                GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio:
                          1.5, //Ratio of child item that width > height
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryItem(
                      categoryTitle: 'Comedy',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _filterButton extends StatelessWidget {
  const _filterButton();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Expanded(
      flex: 1,
      child: SizedBox(
        height: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor: AppColor.greyColor,
          ),
          onPressed: () {
            showFlexibleBottomSheet(
              minHeight: 0,
              initHeight: 0.4,
              maxHeight: 0.4,
              context: context,
              builder: _buildBottomSheet,
              isExpand: false,
            );
          },
          child: Icon(
            Iconsax.filter,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class _searchBox extends StatelessWidget {
  const _searchBox();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      //Search box
      child: AppTextField(
        hintText: 'Search title/author',
        prefixIcon: Icon(Iconsax.search_normal),
      ),
    );
  }
}

Widget _buildBottomSheet(
  BuildContext context,
  ScrollController scrollController,
  double bottomSheetOffset,
) {
  return Material(
    child: Scaffold(
        appBar: CustomAppBar(
          title: 'Filter',
          textStyle: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
          action: [
            Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  'Reset',
                  style: Theme.of(context).textTheme.bodySmall,
                ))
          ],
        ),
        body: Column()),
  );
}
