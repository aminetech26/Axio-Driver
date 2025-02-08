import 'package:geolocator/geolocator.dart';

class PermissionService {
  static Future<bool> checkLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }

  Future<Position> requestLocationPermission() async {
    bool permission = await checkLocationPermission();
    if (!permission) {
      throw Exception('Permission refusée');
    }
    return await Geolocator.getCurrentPosition();
  }
}
