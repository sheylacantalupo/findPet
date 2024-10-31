import 'package:find_pet/app/components/fp_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FPTextFormSearch extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final String? initialValue;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Color? fillColor;

  const FPTextFormSearch({
    super.key,
    this.padding,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return FPTextFormField(
      padding: padding,
      controller: controller,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      inputFormatters: inputFormatters,
      suffix: const Icon(Icons.search),
      fillColor: fillColor,
    );
  }
}
