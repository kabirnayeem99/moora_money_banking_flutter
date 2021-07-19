import 'package:moora_money_banking_flutter/constants/asset_constants.dart';
import 'package:moora_money_banking_flutter/models/card_model.dart';
import 'package:moora_money_banking_flutter/models/operation_model.dart';

class ApiNotifier {
  Future<String> getUserName() async {
    return "Naimul Kabir";
  }

  Future<String> getGreeting() async {
    int currentHour = DateTime.now().hour;

    if (currentHour > 17 && currentHour < 19) {
      return "Good Evening";
    }

    if (currentHour > 6 && currentHour < 11) {
      return "Good Morning";
    }

    if (currentHour > 13 && currentHour < 17) {
      return "Good Afternoon";
    }

    if (currentHour > 19 && currentHour < 5) {
      return "Good Night";
    }

    if (currentHour > 11 && currentHour < 13) {
      return "Good Noon";
    }

    return "Welcome back";
  }

  Future<CardModel> getCard(int cardSerial) async {
    return CardModel(
      cardNumber: "**** **** **** 1111",
      cardHolderName: "Naimul Kabir",
      expiryDate: "07-07-2077",
    );
  }

  Future<List<CardModel>> getCards() async {
    return [
      CardModel(
        cardNumber: "**** **** **** 1111",
        cardHolderName: "Naimul Kabir",
        expiryDate: "07-07-2077",
      ),
      CardModel(
        cardNumber: "**** **** **** 2222",
        cardHolderName: "Naimul Kabir",
        expiryDate: "07-07-2077",
      ),
      CardModel(
        cardNumber: "**** **** **** 3333",
        cardHolderName: "Latifa Jahan",
        expiryDate: "03-03-2033",
      ),
    ];
  }

  Future<OperationModel> getOperation(int operationNumber) async {
    bool isActive = operationNumber == 0;

    return OperationModel(
      Assets.icon_svg_money,
      "Money Transfer",
      isActive,
    );
  }

  Future<List<OperationModel>> getOperations() async {
    return [
      OperationModel(
        Assets.icon_svg_money,
        "Money Transfer",
        true,
      ),
      OperationModel(
        Assets.icon_svg_money,
        "Money Transfer",
        false,
      ),
      OperationModel(
        Assets.icon_svg_money,
        "Money Transfer",
        false,
      ),
      OperationModel(
        Assets.icon_svg_money,
        "Money Transfer",
        false,
      ),
    ];
  }
}
