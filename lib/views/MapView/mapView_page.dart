import 'package:axio_driver/models/destination_model.dart';
import 'package:axio_driver/models/map_location.dart';
import 'package:axio_driver/views/MapView/widgets/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:axio_driver/core/app_colors.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';

class MapviewPage extends StatefulWidget {
  final DestinationResponse destinationResponse;
  const MapviewPage({super.key, required this.destinationResponse});

  @override
  State<MapviewPage> createState() => _MapviewPageState();
}

class _MapviewPageState extends State<MapviewPage> {
  late List<MapLocation> locations;
  bool _isBottomSheetExpanded = false;
  final MapController _mapController = MapController();

  @override
  void initState() {
    super.initState();
    locations = widget.destinationResponse.data.locations
        .map((loc) =>
            MapLocation(latitude: loc.latitude, longitude: loc.longitude))
        .toList();
  }

  void _zoomIn() {
    _mapController.move(
        _mapController.camera.center, _mapController.camera.zoom + 1);
  }

  void _zoomOut() {
    _mapController.move(
        _mapController.camera.center, _mapController.camera.zoom - 1);
  }

  void _centerMap() {
    if (locations.isNotEmpty) {
      _mapController.move(
        LatLng(locations[0].latitude, locations[0].longitude),
        14.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final trip = widget.destinationResponse.data.trip;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(
            locations: locations,
            mapController: _mapController,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Material(
              color: Colors.transparent,
              child: Container(
                height: kToolbarHeight + MediaQuery.of(context).padding.top,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primaryBlue,
                      AppColors.primaryBlue.withOpacity(0.0),
                    ],
                  ),
                ),
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back,
                        color: AppColors.surfaceColor),
                    onPressed: () => GoRouter.of(context).pop(),
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.info_outline,
                          color: AppColors.surfaceColor),
                      onPressed: () => setState(() =>
                          _isBottomSheetExpanded = !_isBottomSheetExpanded),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: _isBottomSheetExpanded ? 260 : 80,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.surfaceColor,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 48,
                    height: 48,
                    shape: const CircleBorder(),
                    onPressed: _centerMap,
                    child: const Icon(Icons.my_location,
                        color: AppColors.primaryBlue),
                  ),
                  const Divider(height: 1),
                  MaterialButton(
                    minWidth: 48,
                    height: 48,
                    shape: const CircleBorder(),
                    onPressed: _zoomIn,
                    child: const Icon(Icons.add, color: AppColors.primaryBlue),
                  ),
                  const Divider(height: 1),
                  MaterialButton(
                    minWidth: 48,
                    height: 48,
                    shape: const CircleBorder(),
                    onPressed: _zoomOut,
                    child:
                        const Icon(Icons.remove, color: AppColors.primaryBlue),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            left: 0,
            right: 0,
            bottom: _isBottomSheetExpanded ? 0 : -240,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onVerticalDragUpdate: (details) {
                if (details.primaryDelta! > 10) {
                  setState(() => _isBottomSheetExpanded = false);
                } else if (details.primaryDelta! < -10) {
                  setState(() => _isBottomSheetExpanded = true);
                }
              },
              child: Container(
                height: 280,
                decoration: BoxDecoration(
                  color: AppColors.surfaceColor,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 12,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Drag Handle
                    Container(
                      width: 40,
                      height: 4,
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: AppColors.borderDark,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Détails de la livraison",
                            style: theme.textTheme.displayMedium?.copyWith(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 24),
                          _InfoRow(
                            icon: Icons.location_on,
                            text: "${locations.length} points de livraison",
                            theme: theme,
                          ),
                          const SizedBox(height: 16),
                          _InfoRow(
                            icon: Icons.access_time,
                            text:
                                "Durée estimée: ${trip.predefinedEndDate.difference(trip.predefinedStartDate).inDays} jours",
                            theme: theme,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final ThemeData theme;

  const _InfoRow({
    required this.icon,
    required this.text,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primaryBlue, size: 28),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.headlineMedium?.copyWith(
              color: AppColors.textPrimary,
              height: 1.3,
            ),
          ),
        ),
      ],
    );
  }
}
