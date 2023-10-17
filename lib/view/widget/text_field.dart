import 'package:flutter/material.dart';

class CommonTextFormField extends StatefulWidget {
  const CommonTextFormField({
    Key? key,
    required this.keyboardType,
    required this.hintText,
    this.controller,
    // required this.validator,
    this.suffixIcon,
    this.maxLines,
  }) : super(key: key);

  final TextInputType keyboardType;
  final String hintText;
  final TextEditingController? controller;
  // final FormFieldValidator validator;
  final Widget? suffixIcon;
  final int? maxLines;

  @override
  State<CommonTextFormField> createState() => _CommonTextFormFieldState();
}

class _CommonTextFormFieldState extends State<CommonTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      // validator: widget.validator,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        return null;
      },
      controller: widget.controller,

      maxLines: widget.maxLines,
      cursorColor: Colors.amber,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: const Color(0xffF7F7F7),
        suffixIcon: widget.suffixIcon,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Color(0xffE0E0E0))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Color(0xffE0E0E0))),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Colors.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Colors.red)),
      ),
    );
  }
}
