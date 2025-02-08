import 'package:axio_driver/core/api_client.dart';
import 'package:axio_driver/core/app_error.dart';
import 'package:axio_driver/core/error_code.dart';
import 'package:axio_driver/models/map_location.dart';
import 'package:axio_driver/models/osrm_leg_response.dart';
import 'package:axio_driver/models/osrm_response.dart';
import 'package:axio_driver/models/osrm_step_response.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:latlong2/latlong.dart';

class RouteViewmodel {
  final ApiClient apiClient;
  RouteViewmodel({required this.apiClient});

  Future<List<MapLocation>> getRoutesFromLocations(
      List<MapLocation> locations) async {
    try {
      final locationsString =
          locations.map((e) => '${e.longitude},${e.latitude}').join(';');
      final path =
          'https://router.project-osrm.org/route/v1/driving/$locationsString?annotations=true&steps=true';

      final response = await apiClient.get(path);
      final osrmResponse =
          response == null ? null : OsrmResponse.fromJson(response);

      final legs = osrmResponse!.routes
          .expand<OsrmLegResponse>((route) => route.legs ?? [])
          .toList();
      final steps =
          legs.expand<OsrmStepResponse>((leg) => leg.steps ?? []).toList();
      final geometries = steps
          .map((e) => e.geometry)
          .where((geom) => geom != null)
          .cast<String>()
          .toList();

      final polylinePoints = PolylinePoints();
      final List<MapLocation> mapLocations = [];

      for (final element in geometries) {
        final List<PointLatLng> result = polylinePoints.decodePolyline(element);
        mapLocations.addAll(result.map(
            (p) => MapLocation(latitude: p.latitude, longitude: p.longitude)));
      }

      return mapLocations;
    } catch (e) {
      throw Exception(ErrorCode.ERREUR_INATTENDUE);
    }
  }
}
