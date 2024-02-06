import 'package:flutter/material.dart';
import 'package:nonton_id/constant/color.dart';

class FormFieldWidget extends StatelessWidget {
  FormFieldWidget({required this.hintText, required this.icon});

  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 47),
      height: 37,
      width: double.infinity,
      decoration: BoxDecoration(
        color: appPurple,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        onChanged: (String value) => value,
        decoration: InputDecoration(
            hintStyle: TextStyle(color: appWhite.withOpacity(0.2)),
            hintText: '${hintText}',
            prefixIcon: Icon(
              icon,
              color: appWhite.withOpacity(0.2),
            )),
      ),
      
    );
  }
}
