// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryHistoryResponseImpl _$$DeliveryHistoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryHistoryResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => DeliveryRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      success: json['success'] as bool,
      pagination:
          PaginationInfo.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeliveryHistoryResponseImplToJson(
        _$DeliveryHistoryResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
      'pagination': instance.pagination,
    };

_$DeliveryRecordImpl _$$DeliveryRecordImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryRecordImpl(
      id: json['id'] as String,
      missionId: json['missionId'] as String,
      destination: json['destination'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      distance: (json['distance'] as num).toDouble(),
      stops: (json['stops'] as List<dynamic>)
          .map((e) => DeliveryStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$DeliveryRecordImplToJson(
        _$DeliveryRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'missionId': instance.missionId,
      'destination': instance.destination,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'distance': instance.distance,
      'stops': instance.stops,
      'status': instance.status,
      'rating': instance.rating,
    };

_$DeliveryStopImpl _$$DeliveryStopImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryStopImpl(
      address: json['address'] as String,
      arrivalTime: DateTime.parse(json['arrivalTime'] as String),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$DeliveryStopImplToJson(_$DeliveryStopImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'arrivalTime': instance.arrivalTime.toIso8601String(),
      'status': instance.status,
    };

_$PaginationInfoImpl _$$PaginationInfoImplFromJson(Map<String, dynamic> json) =>
    _$PaginationInfoImpl(
      currentPage: (json['currentPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      itemsPerPage: (json['itemsPerPage'] as num).toInt(),
      totalItems: (json['totalItems'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginationInfoImplToJson(
        _$PaginationInfoImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'itemsPerPage': instance.itemsPerPage,
      'totalItems': instance.totalItems,
    };
