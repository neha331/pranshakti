import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback? onActionPressed;

  const SectionTitle({
    Key? key,
    required this.title,
    this.actionText = '',
    this.onActionPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        if (actionText.isNotEmpty)
          ElevatedButton(
            onPressed: onActionPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(actionText),
          ),
      ],
    );
  }
}
