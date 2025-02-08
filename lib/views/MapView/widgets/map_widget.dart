import 'package:axio_driver/core/services/permission_service.dart';
import 'package:axio_driver/models/map_location.dart';
import 'package:axio_driver/views/MapView/widgets/polyline_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  final List<MapLocation> locations;
  final MapController mapController;

  const MapWidget({
    super.key,
    required this.locations,
    required this.mapController,
  });

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  LatLng? _currentCenter;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PermissionService().requestLocationPermission(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return const Center(child: Text('Error retrieving position'));
        }
        final Position currentPosition = snapshot.data as Position;
        final initialCenter =
            LatLng(currentPosition.latitude, currentPosition.longitude);
        _currentCenter ??= initialCenter;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          widget.mapController.move(initialCenter, 14.0);
        });
        return Stack(
          children: [
            FlutterMap(
              mapController: widget.mapController,
              options: MapOptions(
                initialCenter: initialCenter,
                initialZoom: 14.0,
                onPositionChanged: (position, hasGesture) {
                  _currentCenter = position.center;
                },
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.axio_driver',
                ),
                MarkerLayer(
                  markers: widget.locations.map((location) {
                    return Marker(
                      point: LatLng(location.latitude, location.longitude),
                      width: 32,
                      height: 32,
                      child: const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          IconData(0xe2a0, fontFamily: 'MaterialIcons'),
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                PolylineBuilderWidget(locations: widget.locations),
              ],
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Column(
                children: [
                  FloatingActionButton(
                    heroTag: 'zoomIn',
                    mini: true,
                    onPressed: () {
                      setState(() {
                        final center = _currentCenter ??
                            widget.mapController.camera.center;
                        widget.mapController
                            .move(center, widget.mapController.camera.zoom + 1);
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(height: 8),
                  FloatingActionButton(
                    heroTag: 'zoomOut',
                    mini: true,
                    onPressed: () {
                      setState(() {
                        final center = _currentCenter ??
                            widget.mapController.camera.center;
                        widget.mapController
                            .move(center, widget.mapController.camera.zoom - 1);
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
