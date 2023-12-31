import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key, required this.title, this.textStyle, this.action})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0
  final String title;
  final TextStyle? textStyle; // custom textstyle of title on appbar
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: InkWell(
        onTap: () {
          _onBackPressed(context);
        },
        child: const Icon(Iconsax.arrow_left),
      ),
      title: Text(
        title,
        style: textStyle,
      ),
      actions: action,
    );
  }

  void _onBackPressed(BuildContext context) {
    Navigator.of(context).pop();
  }
}
