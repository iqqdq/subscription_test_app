import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class BackgroundView extends StatelessWidget {
  const BackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Blur(
      blur: 50.0,
      colorOpacity: 0.0,
      child: Stack(children: [
        /// TOP ELLIPSE
        Positioned(
          top: 80.0,
          left: -199.0,
          child: Container(
            width: 317.0,
            height: 359.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(179.5),
              color: Colours.primary,
            ),
          ),
        ),

        /// BOTTOM ELLIPSE
        Positioned(
          top: MediaQuery.of(context).size.height * 0.5,
          left: 221.0,
          child: Container(
            width: 414.0,
            height: 359.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(179.5),
              color: Colours.primary,
            ),
          ),
        ),
      ]),
    );
  }
}
