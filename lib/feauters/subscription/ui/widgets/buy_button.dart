import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class BuyButton extends StatelessWidget {
  final VoidCallback onTap;

  const BuyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29.0),
        gradient: LinearGradient(colors: [
          Colours.primary,
          Colours.primaryLight,
        ]),
      ),
      child: ElevatedButton(
        onPressed: () => onTap(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colours.transparent,
          shadowColor: Colours.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),
        ),
        child: Center(
          child: Text(
            Titles.buy,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colours.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
