import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moora_money_banking_flutter/constants/asset_constants.dart';
import 'package:moora_money_banking_flutter/constants/theme_constants.dart';
import 'package:moora_money_banking_flutter/models/card_model.dart';

class OurBankCard extends StatelessWidget {
  final CardModel card;

  const OurBankCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.all(21.75),
        margin: EdgeInsets.only(right: 7.5),
        width: 258.0,
        height: 149.25,
        decoration: BoxDecoration(
          color: OurColors.deepBlue,
          borderRadius: BorderRadius.circular(21.0),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21.0)),
                child: SvgPicture.asset(
                  Assets.bg_svg_card_top_left_corner,
                  height: 58.0,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21.0),
                ),
                child: SvgPicture.asset(
                  Assets.bg_svg_card_bottom_right_corner,
                  height: 128.0,
                  width: 110.0,
                ),
              ),
            ),
            Positioned(
              left: 21.75,
              top: 36.0,
              child: Text(
                "CARD NUMBER",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.5,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 21.75,
              top: 48.750,
              child: Text(
                card.cardNumber,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.00,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 26.25,
              right: 15.750,
              child: Container(
                height: 20.25,
                width: 20.25,
                child: Image.asset(Assets.img_png_mastercard_logo),
              ),
            ),
            Positioned(
              bottom: 33.75,
              left: 21.75,
              child: Text(
                "CARDHOLDER NAME",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.5,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 15.75,
              left: 21.75,
              child: Text(
                card.cardHolderName,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.5,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 33.75,
              left: 151.5,
              child: Text(
                "EXPIRY DATE",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.5,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 15.75,
              left: 151.5,
              child: Text(
                card.expiryDate,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.5,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Spacer(flex: 2),
        //     Row(
        //       children: [
        //         Text(
        //           "Card Number",
        //           style: TextStyle(
        //             fontWeight: FontWeight.w400,
        //             fontSize: 10.5,
        //             color: Colors.white,
        //           ),
        //         ),
        //         Container(
        //           height: 20.25,
        //           width: 20.25,
        //           child: Image.asset(Assets.img_png_mastercard_logo),
        //         ),
        //       ],
        //     ),
        //     Container(
        //       child: Text(
        //         "**** **** **** 1425",
        //         style: TextStyle(
        //           fontWeight: FontWeight.w700,
        //           fontSize: 15.00,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //     Spacer(flex: 2),
        //     Container(
        //       child: Row(
        //         children: [
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Text(
        //                 "CARDHOLDER NAME",
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                   fontSize: 10.5,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //               Text(
        //                 "Mahmud Rafid",
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w700,
        //                   fontSize: 15.00,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Spacer(flex: 1),
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Text(
        //                 "EXPIRY DATE",
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                   fontSize: 10.5,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //               Text(
        //                 "18-08-2021",
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w700,
        //                   fontSize: 15.00,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     SizedBox(height: 35.0, width: 38.75),
        //   ],
        // ),
        );
  }
}
