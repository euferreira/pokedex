import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ClientDio {
  final Dio client;
  final baseUrl = dotenv.env['POKE_ENDPOINT']!;

  ClientDio({required this.client}) {
    client.options.baseUrl = baseUrl;
    client.options.connectTimeout = 60 * 1000;
  }
}