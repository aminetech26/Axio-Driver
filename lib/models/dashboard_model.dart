import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.g.dart';
part 'dashboard_model.freezed.dart';

@freezed
class DashboardResponse with _$DashboardResponse {
  const factory DashboardResponse({
    required DashboardData data,
    required String message,
    required bool success,
  }) = _DashboardResponse;

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);
}

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    required DriverStats stats,
    required List<RecentActivity> recentActivities,
    required ActiveMission? activeMission,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}

@freezed
class DriverStats with _$DriverStats {
  const factory DriverStats({
    required int totalDeliveries,
    required int deliveriesThisMonth,
    required double totalDistance,
    required double rating,
  }) = _DriverStats;

  factory DriverStats.fromJson(Map<String, dynamic> json) =>
      _$DriverStatsFromJson(json);
}

@freezed
class RecentActivity with _$RecentActivity {
  const factory RecentActivity({
    required String id,
    required String type,
    required String description,
    required DateTime timestamp,
  }) = _RecentActivity;

  factory RecentActivity.fromJson(Map<String, dynamic> json) =>
      _$RecentActivityFromJson(json);
}

@freezed
class ActiveMission with _$ActiveMission {
  const factory ActiveMission({
    required String id,
    required String destination,
    required DateTime expectedDelivery,
    required double progress,
    required int stopsCompleted,
    required int totalStops,
  }) = _ActiveMission;

  factory ActiveMission.fromJson(Map<String, dynamic> json) =>
      _$ActiveMissionFromJson(json);
}
