import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_history_model.g.dart';
part 'delivery_history_model.freezed.dart';

@freezed
class DeliveryHistoryResponse with _$DeliveryHistoryResponse {
  const factory DeliveryHistoryResponse({
    required List<DeliveryRecord> data,
    required String message,
    required bool success,
    required PaginationInfo pagination,
  }) = _DeliveryHistoryResponse;

  factory DeliveryHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryHistoryResponseFromJson(json);
}

@freezed
class DeliveryRecord with _$DeliveryRecord {
  const factory DeliveryRecord({
    required String id,
    required String missionId,
    required String destination,
    required DateTime startDate,
    required DateTime endDate,
    required double distance,
    required List<DeliveryStop> stops,
    required String status,
    required double rating,
  }) = _DeliveryRecord;

  factory DeliveryRecord.fromJson(Map<String, dynamic> json) =>
      _$DeliveryRecordFromJson(json);
}

@freezed
class DeliveryStop with _$DeliveryStop {
  const factory DeliveryStop({
    required String address,
    required DateTime arrivalTime,
    required String status,
  }) = _DeliveryStop;

  factory DeliveryStop.fromJson(Map<String, dynamic> json) =>
      _$DeliveryStopFromJson(json);
}

@freezed
class PaginationInfo with _$PaginationInfo {
  const factory PaginationInfo({
    required int currentPage,
    required int totalPages,
    required int itemsPerPage,
    required int totalItems,
  }) = _PaginationInfo;

  factory PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoFromJson(json);
}
