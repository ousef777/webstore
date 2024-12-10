import 'package:flutter/material.dart';
import 'package:webstore/services/payment.dart';

class PaymentProvider extends ChangeNotifier {

  Future<Map<String, dynamic>> proccessPayment({required int cardNumber, required double amount}) async {

    var response = await DioClient().proccessPayment(cardNumber: cardNumber, amount: amount);
    return response;
    
  }

}