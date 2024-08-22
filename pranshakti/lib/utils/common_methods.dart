import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonMethods {
  static String version = '';
  static String appBadgeSupported = '';
  static int userId = 0, companyId = 0, userRoleId = 0;
  static String companyName = '', userRole = '';

  // static Future<bool> checkInternetConnectivity() async {
  //   String connectionStatus;
  //   bool isConnected = false;
  //   final Connectivity connectivity = Connectivity();

  //   // Platform messages may fail, so we use a try/catch PlatformException.
  //   try {
  //     connectionStatus = (await connectivity.checkConnectivity()).toString();
  //     if (await connectivity.checkConnectivity() ==
  //         ConnectivityResult.mobile) {
  //       print('===internetConnected==Mobile$connectionStatus');
  //       isConnected = true;
  //       // I am connected to a mobile network.
  //     } else if (await connectivity.checkConnectivity() ==
  //         ConnectivityResult.wifi) {
  //       isConnected = true;
  //       print('===internetConnected==wifi$connectionStatus');
  //       // I am connected to a wifi network.
  //     } else if (await connectivity.checkConnectivity() ==
  //         ConnectivityResult.none) {
  //       isConnected = false;
  //       print('===internetConnected==not$connectionStatus');
  //     }
  //   } on PlatformException catch (e) {
  //     print('===internet==not connected$e');
  //     connectionStatus = 'Failed to get connectivity.';
  //   }
  //   return isConnected;
  //   // If the widgets was removed from the tree while the asynchronous platform
  //   // message was in flight, we want to discard the reply rather than calling
  //   // setState to update our non-existent appearance.
  // }

  static showNetworkDialog(context) {
    showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            content: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/icon/no-connection.png",
                    height: 44,
                    width: 44,
                  ),
                ),
                const Text(
                  'No Internet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Please Check Your Internet Connection!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                  child: const Text('ok'),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          );
        });
  }

  static dismissKeyboard(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void moveCursorToLastPos(TextEditingController textField) {
    var cursorPos =
    TextSelection.fromPosition(TextPosition(offset: textField.text.length));
    textField.selection = cursorPos;
  }

  static bool validateEmail(String value) {
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  static bool validateUrl(String url) {
    String pattern = r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(url)) {
      return false;
    } else {
      return true;
    }
  }

  static bool validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]$)';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  static bool validatePassword(String value) {
    String pattern =
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d#$@!%&*?]{8,20}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  static bool isNumericUsingRegularExpression(String string) {
    final numericRegex = RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]{1,2})))$');

    return numericRegex.hasMatch(string);
  }

  static void inputFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static bool isAlphanumericRegularExpression(String string){
    final pattern = RegExp(r'^[a-zA-Z0-9]+$');
    return pattern.hasMatch(string);
  }

}