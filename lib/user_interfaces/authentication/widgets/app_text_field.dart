import 'package:droidcon_app/user_interfaces/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppTextField extends StatelessWidget {
  final String name;
  final String hint;
  const AppTextField({Key? key, required this.name, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: FormBuilderTextField(
        name: name,
        decoration: InputDecoration(
            hintText: hint,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            enabledBorder: Theme.of(context).brightness == Brightness.dark
                ? const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.5))
                : InputBorder.none,
            hintStyle: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : AppColors.lightGreyTextColor),
            border: Theme.of(context).brightness == Brightness.dark
                ? const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.5))
                : InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.orangeDroidconColor
                        : AppColors.blueDroidconColor)),
            fillColor: AppColors.lightGrayBackgroundColor,
            filled: Theme.of(context).brightness != Brightness.dark),
      ),
    );
  }
}