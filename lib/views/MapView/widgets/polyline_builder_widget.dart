import 'package:axio_driver/models/map_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

// Removed cubit and bloc logic; now draws polyline directly using widget.locations.
class PolylineBuilderWidget extends StatelessWidget {
  final List<MapLocation> locations;
  const PolylineBuilderWidget({super.key, required this.locations});

  @override
  Widget build(BuildContext context) {
    if (locations.length < 2) return Container();
    final points =
        locations.map((e) => LatLng(e.latitude, e.longitude)).toList();
    return PolylineLayer(
      polylines: [
        Polyline(
          points: points,
          strokeWidth: 4.0,
          color: Colors.red,
        ),
      ],
    );
  }
}
