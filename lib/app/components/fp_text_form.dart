import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormSearch extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final String? initialValue;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final Color? fillColor;
  final Color? borderColor;

  const TextFormSearch({
    super.key,
    this.padding,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.suffix,
    this.fillColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextFormField(
        controller: controller,
        initialValue: initialValue,
        onChanged: onChanged,
        validator: validator,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          suffixIcon: suffix,
          filled: fillColor != null, // Somente ativa o preenchimento se fillColor não for nulo
          fillColor: fillColor, // Se for null, deixa o fundo transparente
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: borderColor ?? Colors.white, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: borderColor ?? Colors.white, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: borderColor ?? Colors.white, width: 2.0),
          ),
        ),
      ),
    );
  }
}
