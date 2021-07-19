import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moora_money_banking_flutter/constants/theme_constants.dart';
import 'package:moora_money_banking_flutter/models/operation_model.dart';

class OperationCard extends StatelessWidget {
  const OperationCard({
    Key? key,
    required this.operation,
  }) : super(key: key);

  final OperationModel operation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14.25),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
        color: operation.isActive ? OurColors.deepBlue : Colors.white,
      ),
      height: 92.25,
      width: 92.25,
      padding: EdgeInsets.symmetric(horizontal: 22.5, vertical: 9.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 39.0,
            height: 31.35,
            child: SvgPicture.asset(
              operation.imageUrl,
              color: operation.isActive ? Colors.white : OurColors.deepBlue,
            ),
          ),
          Text(
            operation.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.0,
              color: operation.isActive ? Colors.white : OurColors.deepBlue,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
