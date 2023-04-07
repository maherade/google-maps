import 'package:flutter/material.dart';
import 'package:google_maps/constants/my_colors.dart';

class BuildPhoneFormField extends StatelessWidget {
  late String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.lightGrey),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            child: Text(
              '${generateCountryFlag()}+20',
              style: TextStyle(fontSize: 18, letterSpacing: 2),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.blue),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            child: Expanded(
              child: TextFormField(
                autofocus: true,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your Phone Number';
                  } else if (value.length < 11) {
                    return 'Too Short For a Phone Number';
                  }
                  return null;
                },
                onSaved: (value) {
                  phoneNumber = value!;
                },
                style: const TextStyle(fontSize: 18, letterSpacing: 2.0),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

String generateCountryFlag() {
  String countryCode = 'eg';
  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  return flag;
}
