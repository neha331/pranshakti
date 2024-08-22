import 'package:flutter/material.dart';
import 'package:pranshakti/utils/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2,
          width: mediaQuery.size.width * 0.35,
          color: Constants.colorOrDivider,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0), 
          child: Text('OR'),
        ),
        Container(
          height: 2,
          width: mediaQuery.size.width * 0.35,
          color: Constants.colorOrDivider,
        ),
      ],
    );
  }
}



