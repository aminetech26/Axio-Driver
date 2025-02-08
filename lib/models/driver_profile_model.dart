import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_profile_model.g.dart';
part 'driver_profile_model.freezed.dart';

@freezed
class DriverProfileResponse with _$DriverProfileResponse {
  const factory DriverProfileResponse({
    required DriverProfileData data,
    required String message,
    required bool success,
  }) = _DriverProfileResponse;

  factory DriverProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverProfileResponseFromJson(json);
}

@freezed
class DriverProfileData with _$DriverProfileData {
  const factory DriverProfileData({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String photoUrl,
    required LicenseInfo license,
    required VehicleInfo currentVehicle,
    required DriverStats stats,
    required List<Certificate> certificates,
  }) = _DriverProfileData;

  factory DriverProfileData.fromJson(Map<String, dynamic> json) =>
      _$DriverProfileDataFromJson(json);
}

@freezed
class LicenseInfo with _$LicenseInfo {
  const factory LicenseInfo({
    required String number,
    required String type,
    required DateTime expiryDate,
  }) = _LicenseInfo;

  factory LicenseInfo.fromJson(Map<String, dynamic> json) =>
      _$LicenseInfoFromJson(json);
}

@freezed
class Certificate with _$Certificate {
  const factory Certificate({
    required String name,
    required DateTime issueDate,
    required DateTime expiryDate,
  }) = _Certificate;

  factory Certificate.fromJson(Map<String, dynamic> json) =>
      _$CertificateFromJson(json);
}

@freezed
class VehicleInfo with _$VehicleInfo {
  const factory VehicleInfo({
    required String id,
    required String model,
    required String plateNumber,
    required String type,
    required int year,
  }) = _VehicleInfo;

  factory VehicleInfo.fromJson(Map<String, dynamic> json) =>
      _$VehicleInfoFromJson(json);
}

@freezed
class DriverStats with _$DriverStats {
  const factory DriverStats({
    required int totalTrips,
    required double rating,
    required int completedTrips,
    required int cancelledTrips,
  }) = _DriverStats;

  factory DriverStats.fromJson(Map<String, dynamic> json) =>
      _$DriverStatsFromJson(json);
}
