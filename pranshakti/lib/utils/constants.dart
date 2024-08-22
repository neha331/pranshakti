import 'package:flutter/material.dart';

class Constants {
  static const Color colorOrDivider = Color(0xFFDDDADA);
  static const Color colorPurple  = Color(0xFFC58BF2);

  //const Color.fromARGB(255, 229, 228, 228),
  
//   static const String title = 'Pranshakti';

//   static const String fontFamily = 'Roboto';

//   static const Color colorWhite1 = Color(0xFFF2F3F8);
//   static const Color colorWhite2 = Color(0xFFFFFFFF);
//   static const Color colorNearlyDarkBlue = Color(0xFF2633C5);
//   static const Color colorGrey = Color(0xFF3A5160);
//   static const Color colorLightBlack = Color(0xFF17262A);
//   static const Color colorLighterBlack = Color(0xFF253840);
//   static const Color colorBrightGrey = Color(0xFF4A6572);
//   static const Color colorNearlyWhite = Color(0xFFFAFAFA);
//   static const Color colorNearlyBlack = Color(0xFF213333);

//   static const Color primary = contentColorCyan;
//   static const Color menuBackground = Color(0xFF090912);
//   static const Color itemsBackground = Color(0xFF1B2339);
//   static const Color pageBackground = Color(0xFF282E45);
//   static const Color mainTextColor1 = Colors.white;
//   static const Color mainTextColor2 = Colors.white70;
//   static const Color mainTextColor3 = Colors.white38;
//   static const Color mainGridLineColor = Colors.white10;
//   static const Color borderColor = Colors.white54;
//   static const Color gridLinesColor = Color(0x11FFFFFF);

//   static const Color contentColorBlack = Colors.black;
//   static const Color contentColorWhite = Colors.white;
//   static const Color contentColorBlue = Color(0xFF2196F3);
//   static const Color contentColorYellow = Color(0xFFFFC300);
//   static const Color contentColorOrange = Color(0xFFFF683B);
//   static const Color contentColorGreen = Color(0xFF3BFF49);
//   static const Color contentColorPurple = Color(0xFF6E1BFF);
//   static const Color contentColorPink = Color(0xFFFF3AF2);
//   static const Color contentColorRed = Color(0xFFE80054);
//   static const Color contentColorCyan = Color(0xFF50E4FF);

//   static const int _defaultPrimarySwatchIndex = 0;
//   static final List<MaterialColor> _primarySwatches = _getMaterialColorsFromColors(
//     [
//       contentColorOrange,
//     ],
//   );

//   static MaterialColor getPrimarySwatch(int index) {
//     return (index < 0 || index >= _primarySwatches.length) ? Colors.orange : _primarySwatches[index];
//   }

//   static MaterialColor get defaultPrimarySwatch => getPrimarySwatch(_defaultPrimarySwatchIndex);

//   static List<MaterialColor> _getMaterialColorsFromColors(List<Color> colors) {
//     return colors
//         .map((e) => MaterialColor(
//               e.value,
//               List.generate(
//                 10,
//                 (index) => e,
//               ).asMap().map((k, v) => MapEntry(((k == 0) ? 50 : k * 100), v)),
//             ))
//         .toList();
//   }
// }

// class HexColor extends Color {
//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll("#", "");
//     if (hexColor.length == 6) {
//       hexColor = "FF$hexColor";
//     }
//     return int.parse(hexColor, radix: 16);
//   }

//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));



// String constants
//signup page 
}

class AppStrings {
  static const String enterEmail = 'Enter your email';
  static const String createAccount = 'Create an account';
  static const String sendOtp = 'Send OTP';
  static const String alreadyAccount = 'Already have an account? ';
  static const String login = 'Login';

  //Email otp verification screen
  static const String email = 'Email';
  static const String enterEmailOtp = 'Enter OTP';
  static const String reSendOtp = 'Resend OTP';
  static const String next = 'Next >';
  //create new password
  static const String createNewPassword = 'Create New Password';
  static const String enterNewPassword = 'Enter New Password';
  static const String confirmNewPassword = 'Confirm new password';

  //confirm Phone number
  static const String addPhoneNumber = 'Add Phone Number';
  static const String enterPhoneNumber ='Enter phone number without country code';
  static const String skip = 'Skip';
 
  // Verify phone number
  static const String verifyPhoneNumber ='Verify phone number';
 static const String enterPhoneOtp ='Enter OTP sent on your phone';

 //complete profile one
 static const String completeProfile ='Let’s complete your profile';
 static const String profileText ='It will help us to know more about you!';
 static const String firestName = 'First Name';
 static const String lastName = 'Last Name';
 static const String occupation = 'Occupation';
 static const String address = 'Address';
 static const String pincode = 'Pin Code';

 // complete profile two
static const String  chooseGender= 'Choose Gender';
static const String  dateOfBirth = 'Date of Birth';
static const String  weight = 'Your Weight';
static const String  height = 'Your Height';
static const String  register='Register';
static const String  weightInkg='KG';
static const String  heightInCM ='CM';
 
  //congratulation page
  static const String backToHome = "Back To Home";
  static const String congraxString = "Congratulations, You Have\n Finished Your Workout\n";
  static const String quoteByJack ="Exercises is king and nutrition is queen. Combine the\ntwo and you will have a kingdom\n -Jack Lalanne";
}