import 'package:axio_driver/models/destination_model.dart';
import 'package:flutter/material.dart';

class MapviewPage extends StatefulWidget {
  DestinationResponse destinationResponse;
  MapviewPage({super.key, required this.destinationResponse});

  @override
  State<MapviewPage> createState() => _MapviewPageState();
}

class _MapviewPageState extends State<MapviewPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
