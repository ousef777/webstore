import 'package:dio/dio.dart';
import 'package:webstore/services/client.dart';

class DioClient {

  Future<Map<String, dynamic>> proccessPayment({required int cardNumber, required double amount}) async {
    try {
      Response response = await Client.dio.post('/cards/pay', data: {"cardNumber": cardNumber, "amount": amount});
      return {'message': response.data["message"]};
    } on DioException catch (error) {
      // print(error.response!.data);
      return {'error': error.response!.data["error"]};
    }
  }

}