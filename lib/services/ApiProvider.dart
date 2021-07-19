import 'package:flutter/cupertino.dart';
import 'package:moora_money_banking_flutter/models/card_model.dart';
import 'package:moora_money_banking_flutter/models/operation_model.dart';
import 'package:moora_money_banking_flutter/services/ApiNotifier.dart';

class ApiProvider extends ChangeNotifier {
  late String? _userName;
  late String? _greeting;
  List<CardModel> _cards = [];
  late CardModel? _selectedCard;
  List<OperationModel> _operations = [];
  late OperationModel? _selectedOperation;
  late ApiNotifier _api;

  ApiProvider() {
    _init();
  }

  void _init() {
    _api = ApiNotifier();

    _api.getCards().then((cards) {
      _cards = cards;
      notifyListeners();
    });
    _api.getCards().then((cards) {
      _cards = cards;
      notifyListeners();
    });
    _api.getOperations().then((operations) {
      _operations = operations;
      notifyListeners();
    });
    _api.getUserName().then((userName) {
      _userName = userName;
      notifyListeners();
    });
    _api.getGreeting().then((greeting) {
      _greeting = greeting;
      notifyListeners();
    });
  }

  String getUserName() => _userName == null ? "User" : _userName!;

  List<CardModel> getCards() => _cards;

  List<OperationModel> getOperations() => _operations;

  String getGreeting() => _greeting == null ? "Welcome Back" : _greeting!;

  CardModel? getSelectedCard(int cardSerial) {
    _api.getCard(cardSerial).then((selectedCard) => _selectedCard);
    return _selectedCard;
  }

  OperationModel? getSelectedOperation(operationSerial) {
    _api
        .getCard(operationSerial)
        .then((selectedOperation) => _selectedOperation);
    return _selectedOperation;
  }
}
