import 'package:dio/dio.dart';
import 'package:pokedex/app/shared/dio/client.dio.dart';

class PokeClientDio extends ClientDio {
  PokeClientDio() : super(client: Dio());
}