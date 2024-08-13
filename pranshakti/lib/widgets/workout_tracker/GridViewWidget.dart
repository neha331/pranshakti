import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double childAspectRatio;
  final EdgeInsetsGeometry padding;
  final Image? imagePath;

  const GridViewWidget({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    this.crossAxisCount = 2,
    this.crossAxisSpacing = 2.0,
    this.mainAxisSpacing = 4.0,
    this.childAspectRatio = 1.0,
    this.padding = const EdgeInsets.all(3.0),
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: padding,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder:  itemBuilder,
    );
  }
}
