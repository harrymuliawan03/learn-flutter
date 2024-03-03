import 'package:flutter/material.dart';

class DropdownButtonForm<T> extends StatelessWidget {
  const DropdownButtonForm({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  final List<DropdownMenuItem<T>> items;
  final T value;
  final void Function(T? newValue) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: value,
      items: items,
      onChanged: (value) => onChanged(value),
    );
  }
}
