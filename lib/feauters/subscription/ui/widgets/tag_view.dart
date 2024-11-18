import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class TagView extends StatelessWidget {
  final String title;

  const TagView({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.0,
      height: 35.0,
      decoration: BoxDecoration(
        color: Colours.white,
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: Colours.primary,
          ),
        ),
      ),
    );
  }
}
