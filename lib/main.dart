import 'dart:async';
import 'package:axio_driver/views/AxioApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:axio_driver/core/get_it.dart' as get_it;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(get_it.initDependencies());
  runApp(const AxioApp());
}
