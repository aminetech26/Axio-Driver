import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_model.freezed.dart';
part 'destination_model.g.dart';

@freezed
class DestinationResponse with _$DestinationResponse {
  const factory DestinationResponse({
    required bool success,
    required Data data,
  }) = _DestinationResponse;

  factory DestinationResponse.fromJson(Map<String, dynamic> json) =>
      _$DestinationResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'route_plan_id') required int routePlanId,
    required List<Location> locations,
    required Trip trip,
    required Truck truck,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'location_id') required int locationId,
    @JsonKey(name: 'route_plan_id') required int routePlanId,
    required int unloadingTime,
    required String name,
    required double longitude,
    required double latitude,
    required int order,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Trip with _$Trip {
  const factory Trip({
    @JsonKey(name: 'trip_id') required int tripId,
    @JsonKey(name: 'contract_id') required int contractId,
    @JsonKey(name: 'predefined_start_date') required DateTime predefinedStartDate,
    @JsonKey(name: 'predefined_end_date') required DateTime predefinedEndDate,
    @JsonKey(name: 'actual_start_date') required DateTime actualStartDate,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}

@freezed
class Truck with _$Truck {
  const factory Truck({
    @JsonKey(name: 'truck_id') required int truckId,
    required String model,
    required String plate,
    required double height,
    required double width,
    required double length,
    @JsonKey(name: 'max_weight') required int maxWeight,
    @JsonKey(name: 'transporter_id') required int transporterId,
  }) = _Truck;

  factory Truck.fromJson(Map<String, dynamic> json) => _$TruckFromJson(json);
}
