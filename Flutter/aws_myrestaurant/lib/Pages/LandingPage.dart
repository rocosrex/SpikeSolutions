/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aws_myrestaurant/Pages/forgotpasswordPage.dart';
import 'package:flutter/material.dart';

import '../Views/SignInView.dart';
import '../Views/SignUpView.dart';
import 'MainPage.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isPasswordReset = false;

  Future<Null> _showDialogForResult(
      String text, Function onSuccess, Widget dialogWidget) async {
    bool result = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(title: Text(text), children: [
            dialogWidget,
            ElevatedButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
          ]);
        });

    if (result) onSuccess();
  }

  // dialogWidget must return true or false
  Widget openDialogButton(
      String text, Function onSuccess, Widget dialogWidget) {
    return ElevatedButton(
        child: Text(text),
        onPressed: () {
          _showDialogForResult(text, onSuccess, dialogWidget);
        });
  }

  void onSignInSuccess() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => MainPage()), (route) => false);
  }

  Future<void> resetPassword() async {
    try {
      final result = await Amplify.Auth.resetPassword(
        username: 'rexlee70@gmail.com',
      );
      print('resetPassword: ${result.isPasswordReset}');
      setState(() {
        isPasswordReset = result.isPasswordReset;
      });
    } on AmplifyException catch (e) {
      safePrint(e);
    }
  }

  void onResetPassword() async {
    // await resetPassword();

    onConfirmResetPassword();
  }

  void onConfirmResetPassword() async {
    try {
      await Amplify.Auth.confirmResetPassword(
          username: 'rexlee70@gmail.com',
          newPassword: 'zxcv4321',
          confirmationCode: '224592');
    } on AmplifyException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Landing Page"),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            openDialogButton("Sign In", onSignInSuccess, SignInView()),
            ElevatedButton(
                onPressed: () {
                  onResetPassword();
                },
                child: const Text('Forgot Password')),
            openDialogButton(
                "Sign Up", () => {print("sign up success")}, SignUpView())
          ],
        )));
  }
}
