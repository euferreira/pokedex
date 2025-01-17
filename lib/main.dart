import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/core/app.widget.dart';

void main() async {
  await dotenv.load();
  runApp(const PokeApp());
}