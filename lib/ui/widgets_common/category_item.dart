import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryTitle,
    this.image,
  });

  final String categoryTitle;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),

        // Background Image
        image: DecorationImage(
          image: image ?? AssetImage('assets/images/welcome.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Dark overlay gradient
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.94),
                    Colors.black.withOpacity(.2),
                  ]),
            ),
          ),
          // Content
          Center(
            child: Text(
              categoryTitle,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
