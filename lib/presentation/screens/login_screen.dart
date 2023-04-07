import 'package:flutter/material.dart';
import 'package:google_maps/componants/intro_texts.dart';
import 'package:google_maps/componants/next_button.dart';
import 'package:google_maps/componants/phone_form_field.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';

  final GlobalKey<FormState> phoneFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: phoneFormKey,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 88),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildIntroTexts(),
                  const SizedBox(
                    height: 110,
                  ),
                  BuildPhoneFormField(),
                  const SizedBox(
                    height: 20,
                  ),
                  NextButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
