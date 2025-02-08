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
  late TextEditingController _problemController;
  bool _includeLocation = false;
  late List<bool> _stationDelivered;

  @override
  void initState() {
    super.initState();
    locations = widget.destinationResponse.data.locations
        .map((loc) =>
            MapLocation(latitude: loc.latitude, longitude: loc.longitude))
        .toList();
    _stationDelivered = List<bool>.filled(locations.length, false);
    _problemController = TextEditingController();
  }

  @override
  void dispose() {
    _problemController.dispose();
    super.dispose();
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

  void _showProblemModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surfaceColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding:
              MediaQuery.of(context).viewInsets.add(const EdgeInsets.all(16)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: AppColors.borderDark,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Text(
                  "Signaler un problème",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _problemController,
                  decoration: InputDecoration(
                    hintText: "Décrivez la situation",
                    hintStyle: const TextStyle(color: AppColors.textHint),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: AppColors.borderLight),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: AppColors.primaryBlue),
                    ),
                    filled: true,
                    fillColor: AppColors.secondaryBlue,
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 16),
                CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    "Joindre ma localisation",
                    style: TextStyle(color: AppColors.textPrimary),
                  ),
                  value: _includeLocation,
                  activeColor: AppColors.primaryBlue,
                  onChanged: (val) {
                    setState(() {
                      _includeLocation = val ?? false;
                    });
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size.fromHeight(48),
                  ),
                  child: const Text("Envoyer",
                      style: TextStyle(color: AppColors.surfaceColor)),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
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
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.surfaceColor,
                      AppColors.surfaceColor.withOpacity(0.95),
                    ],
                  ),
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
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 4,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: AppColors.borderDark.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryBlue,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(Icons.local_shipping,
                                      color: AppColors.primaryBlue),
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "Détails de la livraison",
                                  style:
                                      theme.textTheme.displayMedium?.copyWith(
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: AppColors.secondaryBlue.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: AppColors.borderLight,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  _InfoRow(
                                    icon: Icons.location_on,
                                    text:
                                        "${locations.length} points de livraison",
                                    theme: theme,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: Divider(),
                                  ),
                                  _InfoRow(
                                    icon: Icons.access_time,
                                    text:
                                        "Durée estimée: ${trip.predefinedEndDate.difference(trip.predefinedStartDate).inDays} jours",
                                    theme: theme,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Column(
                              children:
                                  List.generate(locations.length, (index) {
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: _stationDelivered[index]
                                        ? AppColors.secondaryBlue
                                            .withOpacity(0.2)
                                        : AppColors.surfaceColor,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: _stationDelivered[index]
                                          ? AppColors.primaryBlue
                                              .withOpacity(0.3)
                                          : AppColors.borderLight,
                                    ),
                                  ),
                                  child: _stationDelivered[index]
                                      ? Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryBlue,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: const Icon(
                                                Icons.check,
                                                color: AppColors.surfaceColor,
                                                size: 20,
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            Text(
                                              "Station ${index + 1}: Déchargé",
                                              style: theme.textTheme.bodyLarge
                                                  ?.copyWith(
                                                color: AppColors.textPrimary,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        )
                                      : Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Station ${index + 1}",
                                                style: theme.textTheme.bodyLarge
                                                    ?.copyWith(
                                                  color: AppColors.textPrimary,
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  _stationDelivered[index] =
                                                      true;
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    AppColors.primaryBlue,
                                                elevation: 0,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 8,
                                                ),
                                              ),
                                              child: const Text(
                                                "Confirmer déchargement",
                                                style: TextStyle(
                                                  color: AppColors.surfaceColor,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                );
                              }),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.redError.withOpacity(0.2),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: ElevatedButton.icon(
                                onPressed: _showProblemModal,
                                icon: const Icon(Icons.warning_amber_rounded),
                                label: const Text("Signaler un problème"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.redError,
                                  foregroundColor: AppColors.surfaceColor,
                                  elevation: 0,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
