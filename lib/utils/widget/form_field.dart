import 'package:flutter/material.dart';
import 'package:nonton_id/constant/color.dart';

class FormFieldWidget extends StatefulWidget {
  FormFieldWidget(
      {required this.hintText, required this.icon, required this.controller});

  final String hintText;
  final IconData icon;
  final TextEditingController controller;

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
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
        controller: widget.controller,
        onChanged: (String value) => value,
        decoration: InputDecoration(
            hintStyle: TextStyle(color: appWhite.withOpacity(0.2)),
            hintText: '${widget.hintText}',
            prefixIcon: Icon(
              widget.icon,
              color: appWhite.withOpacity(0.2),
            )),
      ),
    );
  }
}
