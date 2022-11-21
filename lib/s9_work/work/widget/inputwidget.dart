import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? prefixIcon;
  final String? initialValue;
  final Function(String)? onChanged;

  const InputWidget(
      {super.key,
      this.keyboardType,
      this.hintText,
      this.prefixIcon,
      this.initialValue,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.white,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
