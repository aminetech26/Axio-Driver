import 'dart:developer';

import 'package:axio_driver/core/api_client.dart';
import 'package:axio_driver/core/api_constants.dart';
import 'package:axio_driver/models/destination_model.dart';

class MapViewmodel {
  final ApiClient apiClient;
  MapViewmodel({required this.apiClient});

  Future<DestinationResponse?> getDriverCurrentTrip() async {
    try {
      final response = await apiClient.get(ApiConstants.CURRENT_DRIVER_TRIP);
      return DestinationResponse.fromJson(response);
    } catch (error, stacktrace) {
      log('Error fetching current trip: $error\n$stacktrace');
      return null;
    }
  }
}
