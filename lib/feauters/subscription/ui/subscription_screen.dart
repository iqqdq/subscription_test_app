import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/feauters/subscription/ui/widgets/views.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.black,
      body: Stack(children: [
        /// BACKGROUND VIEW
        BackgroundView(),

        /// CONTENT VIEW
        ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            children: <Widget>[
              SizedBox(height: 91.0),

              /// TITLE
              Text(
                Titles.selectSubscription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colours.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.0, 4.0),
                      blurRadius: 12.0,
                      color: Colours.white40,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 64.0),

              /// FIRST SUBSCRIPTION
              SubscriptionButton(
                isSelected: _index == 0,
                isProfitable: false,
                title: '1 ${Titles.month}',
                description: Titles.description,
                price: 1000,
                onTap: () => setState(() => _index = 0),
              ),
              SizedBox(height: 10.0),

              /// SECOND SUBSCRIPTION
              SubscriptionButton(
                isSelected: _index == 1,
                isProfitable: true,
                title: '6 ${Titles.month}',
                description: Titles.description,
                price: 10000,
                oldPrice: 12000,
                onTap: () => setState(() => _index = 1),
              ),

              SizedBox(height: 21.0),

              /// BUY BUTTON
              BuyButton(onTap: () {}),
            ]),

        /// BOTTOM BUTTON'S
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 28.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              /// TERMS OF USE
              TranslucentButton(
                title: Titles.termsOfUse,
                isTranslucent: true,
                onTap: () {},
              ),

              /// PRIVACY POLICY
              TranslucentButton(
                title: Titles.policyPrivacy,
                isTranslucent: true,
                onTap: () {},
              ),

              /// PRIVACY POLICY
              TranslucentButton(
                title: Titles.restorePurchase,
                isTranslucent: false,
                onTap: () {},
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
