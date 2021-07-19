import 'package:flutter/material.dart';
import 'package:moora_money_banking_flutter/constants/theme_constants.dart';

class TabIndicator extends StatelessWidget {
  final bool isActive;

  const TabIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.0),
      decoration: BoxDecoration(
          color: !isActive
              ? OurColors.deepBlue.withOpacity(0.2)
              : OurColors.deepBlue,
          borderRadius: BorderRadius.circular(20.0)),
      height: 6.75,
      width: 6.75,
    );
  }
}
