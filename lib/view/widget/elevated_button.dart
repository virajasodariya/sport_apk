import 'package:flutter/material.dart';

class CommonElevetedButton extends StatefulWidget {
  const CommonElevetedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  State<CommonElevetedButton> createState() => _CommonElevetedButtonState();
}

class _CommonElevetedButtonState extends State<CommonElevetedButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            minimumSize: MaterialStateProperty.all(Size(350, 60))),
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
        ),
      ),
    );
  }
}
