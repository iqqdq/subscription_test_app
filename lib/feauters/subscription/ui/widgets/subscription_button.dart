import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/feauters/subscription/ui/widgets/views.dart';

class SubscriptionButton extends StatelessWidget {
  final bool isSelected;
  final bool isProfitable;
  final String title;
  final String description;
  final double price;
  final double? oldPrice;
  final VoidCallback onTap;

  const SubscriptionButton({
    super.key,
    required this.isSelected,
    required this.isProfitable,
    required this.title,
    required this.description,
    required this.price,
    this.oldPrice,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final button = Container(
      margin: EdgeInsets.only(
        top: isProfitable ? 15.0 : 0.0,
        right: 11.0,
      ),
      decoration: BoxDecoration(
        color: isSelected ? Colours.black37 : Colours.white10,
        borderRadius: BorderRadius.circular(29.0),
        border: isSelected
            ? GradientBoxBorder(
                gradient: LinearGradient(colors: [
                  Colours.white.withValues(alpha: 0.0),
                  Colours.white,
                ]),
                width: 1.0,
              )
            : Border.all(width: 1.0, color: Colours.transparent),
      ),
      child: ElevatedButton(
        onPressed: () => onTap(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colours.transparent,
          shadowColor: Colours.transparent,
          padding: EdgeInsets.only(
            left: 21.0,
            top: 26.0,
            right: 26.0,
            bottom: 26.0,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),
        ),
        child: Column(children: [
          Row(children: [
            /// CHECKBOX
            GradientCheckbox(isSelected: isSelected),
            SizedBox(width: 21.0),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// TITLE
                Text(
                  title,
                  style: TextStyle(
                    color: Colours.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                /// DESCRIPTION
                Text(
                  description,
                  style: TextStyle(
                    color: Colours.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )),
            SizedBox(width: 21.0),
            Column(children: [
              SizedBox(height: isProfitable ? 10.0 : 0.0),

              /// PRICE
              Text(
                '${price.toInt()}p',
                style: TextStyle(
                  height: 0.9,
                  color: Colours.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),

              /// OLD PRICE
              oldPrice == null
                  ? SizedBox.shrink()
                  : Text(
                      '${oldPrice!.toInt()}p',
                      style: TextStyle(
                        color: Colours.white46,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colours.white46,
                      ),
                    ),
            ]),
          ]),

          /// DETAIL'S LIST VIEW
          ListView.builder(
              padding: EdgeInsets.only(
                top: isSelected ? 16.0 : 38.0,
                left: 10.0,
                right: 10.0,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: isSelected ? 5 : 1,
              itemBuilder: (context, index) {
                return isSelected
                    ? Container(
                        margin: EdgeInsets.only(bottom: 14.0),
                        child: Row(
                          children: [
                            Container(
                              width: 7.0,
                              height: 7.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.5),
                                color: Colours.white,
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Text(
                              Titles.detail,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colours.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(height: 0.0);
              }),
        ]),
      ),
    );

    return isProfitable
        ? Stack(children: [
            button,
            Align(
              alignment: Alignment.topRight,
              child: TagView(title: Titles.profitable),
            )
          ])
        : button;
  }
}
