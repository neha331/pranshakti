import 'package:flutter/material.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 90),
            Image.asset("assets/images/Frame.png"),
            const SizedBox(height: 20),
            Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextWidget(
                  text: AppStrings.congraxString,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                const SizedBox(height: 10),
                const CustomTextWidget(
                  text: AppStrings.quoteByJack,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(123, 111, 114, 1),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: AppStrings.backToHome,
                  height: 60,
                  width: 315,
                  borderRadius: 20,
                  onPressed: () {
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
