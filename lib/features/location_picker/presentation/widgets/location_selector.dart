import 'package:flutter/material.dart';
import 'package:state_picker_temp/core/utils/extensions.dart';

class LocationSelector extends StatelessWidget {
  final String? selectedValue;
  final String hintText;
  final bool isEnabled;
  final VoidCallback? onTap;

  const LocationSelector({
    super.key,
    required this.selectedValue,
    required this.hintText,
    this.isEnabled = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: isEnabled ? onTap : null,
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                selectedValue ?? hintText,
                style: TextStyle(
                  fontSize: 16,
                  color: selectedValue != null
                      ? context.colorScheme.onSurface
                      : context.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: isEnabled
                  ? context.colorScheme.onSurface.withValues(alpha: 0.6)
                  : context.colorScheme.onSurface.withValues(alpha: 0.3),
            ),
          ],
        ),
      ),
    );
  }
}
