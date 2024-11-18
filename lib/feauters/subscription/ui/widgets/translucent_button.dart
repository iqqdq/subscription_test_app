import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class TranslucentButton extends StatelessWidget {
  final String title;
  final bool isTranslucent;
  final VoidCallback onTap;

  const TranslucentButton({
    super.key,
    required this.title,
    required this.isTranslucent,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final text = Text(
      title,
      style: TextStyle(
        color: Colours.white30,
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
      ),
    );

    return isTranslucent
        ? TextButton(
            onPressed: () {},
            child: text,
          )
        : ElevatedButton(
            onPressed: () => onTap(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colours.translucent,
              padding: EdgeInsets.symmetric(
                horizontal: 17.0,
                vertical: 10.0,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29.0)),
            ),
            child: text,
          );
  }
}
