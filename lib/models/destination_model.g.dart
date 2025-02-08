// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationResponseImpl _$$DestinationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DestinationResponseImpl(
      success: json['success'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DestinationResponseImplToJson(
        _$DestinationResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      routePlanId: (json['route_plan_id'] as num).toInt(),
      locations: (json['locations'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      trip: Trip.fromJson(json['trip'] as Map<String, dynamic>),
      truck: Truck.fromJson(json['truck'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'route_plan_id': instance.routePlanId,
      'locations': instance.locations,
      'trip': instance.trip,
      'truck': instance.truck,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      locationId: (json['location_id'] as num).toInt(),
      routePlanId: (json['route_plan_id'] as num).toInt(),
      unloadingTime: (json['unloadingTime'] as num).toInt(),
      name: json['name'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'route_plan_id': instance.routePlanId,
      'unloadingTime': instance.unloadingTime,
      'name': instance.name,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'order': instance.order,
    };

_$TripImpl _$$TripImplFromJson(Map<String, dynamic> json) => _$TripImpl(
      tripId: (json['trip_id'] as num).toInt(),
      contractId: (json['contract_id'] as num).toInt(),
      predefinedStartDate:
          DateTime.parse(json['predefined_start_date'] as String),
      predefinedEndDate: DateTime.parse(json['predefined_end_date'] as String),
      actualStartDate: DateTime.parse(json['actual_start_date'] as String),
    );

Map<String, dynamic> _$$TripImplToJson(_$TripImpl instance) =>
    <String, dynamic>{
      'trip_id': instance.tripId,
      'contract_id': instance.contractId,
      'predefined_start_date': instance.predefinedStartDate.toIso8601String(),
      'predefined_end_date': instance.predefinedEndDate.toIso8601String(),
      'actual_start_date': instance.actualStartDate.toIso8601String(),
    };

_$TruckImpl _$$TruckImplFromJson(Map<String, dynamic> json) => _$TruckImpl(
      truckId: (json['truck_id'] as num).toInt(),
      model: json['model'] as String,
      plate: json['plate'] as String,
      height: (json['height'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      length: (json['length'] as num).toDouble(),
      maxWeight: (json['max_weight'] as num).toInt(),
      transporterId: (json['transporter_id'] as num).toInt(),
    );

Map<String, dynamic> _$$TruckImplToJson(_$TruckImpl instance) =>
    <String, dynamic>{
      'truck_id': instance.truckId,
      'model': instance.model,
      'plate': instance.plate,
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'max_weight': instance.maxWeight,
      'transporter_id': instance.transporterId,
    };
