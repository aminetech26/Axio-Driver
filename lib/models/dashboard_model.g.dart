// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardResponseImpl _$$DashboardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardResponseImpl(
      data: DashboardData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$DashboardResponseImplToJson(
        _$DashboardResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

_$DashboardDataImpl _$$DashboardDataImplFromJson(Map<String, dynamic> json) =>
    _$DashboardDataImpl(
      stats: DriverStats.fromJson(json['stats'] as Map<String, dynamic>),
      recentActivities: (json['recentActivities'] as List<dynamic>)
          .map((e) => RecentActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
      activeMission: json['activeMission'] == null
          ? null
          : ActiveMission.fromJson(
              json['activeMission'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DashboardDataImplToJson(_$DashboardDataImpl instance) =>
    <String, dynamic>{
      'stats': instance.stats,
      'recentActivities': instance.recentActivities,
      'activeMission': instance.activeMission,
    };

_$DriverStatsImpl _$$DriverStatsImplFromJson(Map<String, dynamic> json) =>
    _$DriverStatsImpl(
      totalDeliveries: (json['totalDeliveries'] as num).toInt(),
      deliveriesThisMonth: (json['deliveriesThisMonth'] as num).toInt(),
      totalDistance: (json['totalDistance'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$DriverStatsImplToJson(_$DriverStatsImpl instance) =>
    <String, dynamic>{
      'totalDeliveries': instance.totalDeliveries,
      'deliveriesThisMonth': instance.deliveriesThisMonth,
      'totalDistance': instance.totalDistance,
      'rating': instance.rating,
    };

_$RecentActivityImpl _$$RecentActivityImplFromJson(Map<String, dynamic> json) =>
    _$RecentActivityImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$RecentActivityImplToJson(
        _$RecentActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'description': instance.description,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$ActiveMissionImpl _$$ActiveMissionImplFromJson(Map<String, dynamic> json) =>
    _$ActiveMissionImpl(
      id: json['id'] as String,
      destination: json['destination'] as String,
      expectedDelivery: DateTime.parse(json['expectedDelivery'] as String),
      progress: (json['progress'] as num).toDouble(),
      stopsCompleted: (json['stopsCompleted'] as num).toInt(),
      totalStops: (json['totalStops'] as num).toInt(),
    );

Map<String, dynamic> _$$ActiveMissionImplToJson(_$ActiveMissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'destination': instance.destination,
      'expectedDelivery': instance.expectedDelivery.toIso8601String(),
      'progress': instance.progress,
      'stopsCompleted': instance.stopsCompleted,
      'totalStops': instance.totalStops,
    };
