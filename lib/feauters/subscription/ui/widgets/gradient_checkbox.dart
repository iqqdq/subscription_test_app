import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/core/core.dart';

class GradientCheckbox extends StatelessWidget {
  final bool isSelected;

  const GradientCheckbox({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.0,
      height: 28.0,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Colours.white,
        ),
        gradient: isSelected
            ? LinearGradient(colors: [
                Colours.primary,
                Colours.primaryLight,
              ])
            : null,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: isSelected
          ? Center(child: SvgPicture.asset('assets/ic_checkbox.svg'))
          : SizedBox.shrink(),
    );
  }
}
