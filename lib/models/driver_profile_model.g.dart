// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverProfileResponseImpl _$$DriverProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DriverProfileResponseImpl(
      data: DriverProfileData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$DriverProfileResponseImplToJson(
        _$DriverProfileResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

_$DriverProfileDataImpl _$$DriverProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DriverProfileDataImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      photoUrl: json['photoUrl'] as String,
      license: LicenseInfo.fromJson(json['license'] as Map<String, dynamic>),
      currentVehicle:
          VehicleInfo.fromJson(json['currentVehicle'] as Map<String, dynamic>),
      stats: DriverStats.fromJson(json['stats'] as Map<String, dynamic>),
      certificates: (json['certificates'] as List<dynamic>)
          .map((e) => Certificate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DriverProfileDataImplToJson(
        _$DriverProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'photoUrl': instance.photoUrl,
      'license': instance.license,
      'currentVehicle': instance.currentVehicle,
      'stats': instance.stats,
      'certificates': instance.certificates,
    };

_$LicenseInfoImpl _$$LicenseInfoImplFromJson(Map<String, dynamic> json) =>
    _$LicenseInfoImpl(
      number: json['number'] as String,
      type: json['type'] as String,
      expiryDate: DateTime.parse(json['expiryDate'] as String),
    );

Map<String, dynamic> _$$LicenseInfoImplToJson(_$LicenseInfoImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'type': instance.type,
      'expiryDate': instance.expiryDate.toIso8601String(),
    };

_$CertificateImpl _$$CertificateImplFromJson(Map<String, dynamic> json) =>
    _$CertificateImpl(
      name: json['name'] as String,
      issueDate: DateTime.parse(json['issueDate'] as String),
      expiryDate: DateTime.parse(json['expiryDate'] as String),
    );

Map<String, dynamic> _$$CertificateImplToJson(_$CertificateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'issueDate': instance.issueDate.toIso8601String(),
      'expiryDate': instance.expiryDate.toIso8601String(),
    };

_$VehicleInfoImpl _$$VehicleInfoImplFromJson(Map<String, dynamic> json) =>
    _$VehicleInfoImpl(
      id: json['id'] as String,
      model: json['model'] as String,
      plateNumber: json['plateNumber'] as String,
      type: json['type'] as String,
      year: (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$$VehicleInfoImplToJson(_$VehicleInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'plateNumber': instance.plateNumber,
      'type': instance.type,
      'year': instance.year,
    };

_$DriverStatsImpl _$$DriverStatsImplFromJson(Map<String, dynamic> json) =>
    _$DriverStatsImpl(
      totalTrips: (json['totalTrips'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      completedTrips: (json['completedTrips'] as num).toInt(),
      cancelledTrips: (json['cancelledTrips'] as num).toInt(),
    );

Map<String, dynamic> _$$DriverStatsImplToJson(_$DriverStatsImpl instance) =>
    <String, dynamic>{
      'totalTrips': instance.totalTrips,
      'rating': instance.rating,
      'completedTrips': instance.completedTrips,
      'cancelledTrips': instance.cancelledTrips,
    };
