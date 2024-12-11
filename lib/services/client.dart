import 'package:dio/dio.dart';

class Client {
  static final Dio dio = Dio(BaseOptions(
    connectTimeout: const Duration(milliseconds: 5000),
    receiveTimeout: const Duration(milliseconds: 5000),
    baseUrl: 'http://localhost:8000'));  //'https://coded-pets-api-auth.eapi.joincoded.com';
}