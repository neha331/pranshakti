import 'package:flutter/material.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset('assets/images/google.png'),
          onPressed: () {
            // Add your onPressed code here!
          },
        ),
        IconButton(
          icon: Image.asset('assets/images/facebook.png'),
          onPressed: () {
            // Add your onPressed code here!
          },
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(
              color:Color.fromARGB(255, 226, 223, 223)
            )
          ),
          child: IconButton(
            icon: Image.asset(
              'assets/images/Logo_Twitter.png',
              
            ),
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ),
      ],
    );
  }
}
