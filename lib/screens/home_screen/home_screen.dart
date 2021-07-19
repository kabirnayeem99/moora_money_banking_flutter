import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moora_money_banking_flutter/constants/asset_constants.dart';
import 'package:moora_money_banking_flutter/constants/theme_constants.dart';
import 'package:moora_money_banking_flutter/models/card_model.dart';
import 'package:moora_money_banking_flutter/models/operation_model.dart';
import 'package:moora_money_banking_flutter/services/ApiProvider.dart';
import 'package:moora_money_banking_flutter/widgets/tab_indicator.dart';
import 'package:provider/provider.dart';

import 'local_widgets/bank_card.dart';
import 'local_widgets/operation_card.dart';

class OurHomeScreen extends StatefulWidget {
  const OurHomeScreen({Key? key}) : super(key: key);

  @override
  _OurHomeScreenState createState() => _OurHomeScreenState();
}

class _OurHomeScreenState extends State<OurHomeScreen> {
  @override
  Widget build(BuildContext context) {
    ApiProvider _api = Provider.of<ApiProvider>(context);

    List<CardModel> cardsList = _api.getCards();
    List<OperationModel> operationList = _api.getOperations();

    return Scaffold(
      body: _api.getCards().isEmpty || _api.getOperations().isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              margin: EdgeInsets.only(left: 15.75),
              child: ListView(
                physics: ClampingScrollPhysics(),
                children: <Widget>[
                  // Custom AppBar
                  Container(
                    margin: EdgeInsets.only(right: 28.5, top: 13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Custom Drawer
                        GestureDetector(
                          onTap: () => print("Drawer is tapped"),
                          child: SvgPicture.asset(
                            Assets.icon_svg_drawer,
                            height: 20.07,
                            width: 15.0,
                          ),
                        ),
                        // Avatar
                        Container(
                          height: 44.25,
                          width: 44.25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Assets.img_jpg_profile)),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 48.75),
                  // Card section
                  Container(
                    padding: EdgeInsets.only(bottom: 12.75),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _api.getGreeting(),
                          style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3a3a3a),
                            fontSize: 13.5,
                          ),
                        ),
                        Text(
                          _api.getUserName(),
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: OurColors.black,
                            fontSize: 22.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 173.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, itemSerial) {
                        return OurBankCard(
                          card: cardsList[itemSerial],
                        );
                      },
                      itemCount: cardsList.length,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 21.75, right: 27.75),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Operation",
                          style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w700,
                            fontFamily: GoogleFonts.inter().fontFamily,
                          ),
                        ),
                        Row(
                          children: [
                            TabIndicator(isActive: true),
                            TabIndicator(isActive: false),
                            TabIndicator(isActive: false),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    // padding: EdgeInsets.only(top: 10.0),
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    width: MediaQuery.of(context).size.width,
                    height: 108.25,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, operationSerial) {
                        return OperationCard(
                            operation: operationList[operationSerial]);
                      },
                      itemCount: operationList.length,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
