import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChange,
    this.controller,
    this.borderColor = Colors.grey,
    this.labelText,
    this.isPassword,
    this.suffixIcon,
    this.validator,
  });
  final String? labelText;
  final String hintText;
  final TextEditingController? controller;
  final int maxLines;
  final Widget? prefixIcon;
  final bool? isPassword;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  final Color borderColor;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            obscureText: isPassword ?? false,
            controller: controller,
            onChanged: onChange,
            onSaved: onSaved,
            validator: validator,
            cursorColor: Colors.black,
            maxLines: maxLines,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              filled: true,
              labelText: labelText, // Hint integrated into the border
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.black),
              border: buildBorder(borderColor),
              enabledBorder: buildBorder(borderColor),
              focusedBorder: buildBorder(const Color.fromARGB(255, 22, 22, 22)),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.filter_list,
            color: Color.fromARGB(255, 71, 70, 70),
            size: 30,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: color), // Use color parameter
    );
  }
}
