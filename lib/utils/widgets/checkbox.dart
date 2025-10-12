import 'package:flutter/material.dart';

class FancyCheckbox extends StatefulWidget {
  final double h, w;
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const FancyCheckbox({
    super.key,
    this.initialValue = false,
    required this.onChanged,
    required this.h,
    required this.w,
  });

  @override
  State<FancyCheckbox> createState() => _FancyCheckboxState();
}

class _FancyCheckboxState extends State<FancyCheckbox> {
  late bool _checked;

  @override
  void initState() {
    super.initState();
    _checked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => _checked = !_checked);
        widget.onChanged(_checked);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        height: widget.h,
        width: widget.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),

          border: Border.all(
            width: 1.5,
            color: _checked ? Colors.green : Colors.grey,
          ),
          color: _checked ? Colors.green.withOpacity(0.15) : Colors.white,
          boxShadow: _checked
              ? [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ]
              : [
                  BoxShadow(
                    offset: Offset(1, 1),
                    color: Color(0xff000000).withOpacity(0.27),
                    blurRadius: 3,
                    spreadRadius: 1,
                  ),
                ],
        ),
        child: _checked
            ? Icon(Icons.check, size: 14, color: Colors.green.shade700)
            : null,
      ),
    );
  }
}
