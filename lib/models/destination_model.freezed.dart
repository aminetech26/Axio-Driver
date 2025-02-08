// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DestinationResponse _$DestinationResponseFromJson(Map<String, dynamic> json) {
  return _DestinationResponse.fromJson(json);
}

/// @nodoc
mixin _$DestinationResponse {
  bool get success => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this DestinationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DestinationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DestinationResponseCopyWith<DestinationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationResponseCopyWith<$Res> {
  factory $DestinationResponseCopyWith(
          DestinationResponse value, $Res Function(DestinationResponse) then) =
      _$DestinationResponseCopyWithImpl<$Res, DestinationResponse>;
  @useResult
  $Res call({bool success, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$DestinationResponseCopyWithImpl<$Res, $Val extends DestinationResponse>
    implements $DestinationResponseCopyWith<$Res> {
  _$DestinationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DestinationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  /// Create a copy of DestinationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DestinationResponseImplCopyWith<$Res>
    implements $DestinationResponseCopyWith<$Res> {
  factory _$$DestinationResponseImplCopyWith(_$DestinationResponseImpl value,
          $Res Function(_$DestinationResponseImpl) then) =
      __$$DestinationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DestinationResponseImplCopyWithImpl<$Res>
    extends _$DestinationResponseCopyWithImpl<$Res, _$DestinationResponseImpl>
    implements _$$DestinationResponseImplCopyWith<$Res> {
  __$$DestinationResponseImplCopyWithImpl(_$DestinationResponseImpl _value,
      $Res Function(_$DestinationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DestinationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$DestinationResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationResponseImpl implements _DestinationResponse {
  const _$DestinationResponseImpl({required this.success, required this.data});

  factory _$DestinationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Data data;

  @override
  String toString() {
    return 'DestinationResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DestinationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationResponseImplCopyWith<_$DestinationResponseImpl> get copyWith =>
      __$$DestinationResponseImplCopyWithImpl<_$DestinationResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationResponseImplToJson(
      this,
    );
  }
}

abstract class _DestinationResponse implements DestinationResponse {
  const factory _DestinationResponse(
      {required final bool success,
      required final Data data}) = _$DestinationResponseImpl;

  factory _DestinationResponse.fromJson(Map<String, dynamic> json) =
      _$DestinationResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Data get data;

  /// Create a copy of DestinationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DestinationResponseImplCopyWith<_$DestinationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'route_plan_id')
  int get routePlanId => throw _privateConstructorUsedError;
  List<Location> get locations => throw _privateConstructorUsedError;
  Trip get trip => throw _privateConstructorUsedError;
  Truck get truck => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: 'route_plan_id') int routePlanId,
      List<Location> locations,
      Trip trip,
      Truck truck});

  $TripCopyWith<$Res> get trip;
  $TruckCopyWith<$Res> get truck;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routePlanId = null,
    Object? locations = null,
    Object? trip = null,
    Object? truck = null,
  }) {
    return _then(_value.copyWith(
      routePlanId: null == routePlanId
          ? _value.routePlanId
          : routePlanId // ignore: cast_nullable_to_non_nullable
              as int,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      truck: null == truck
          ? _value.truck
          : truck // ignore: cast_nullable_to_non_nullable
              as Truck,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get trip {
    return $TripCopyWith<$Res>(_value.trip, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TruckCopyWith<$Res> get truck {
    return $TruckCopyWith<$Res>(_value.truck, (value) {
      return _then(_value.copyWith(truck: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'route_plan_id') int routePlanId,
      List<Location> locations,
      Trip trip,
      Truck truck});

  @override
  $TripCopyWith<$Res> get trip;
  @override
  $TruckCopyWith<$Res> get truck;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routePlanId = null,
    Object? locations = null,
    Object? trip = null,
    Object? truck = null,
  }) {
    return _then(_$DataImpl(
      routePlanId: null == routePlanId
          ? _value.routePlanId
          : routePlanId // ignore: cast_nullable_to_non_nullable
              as int,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      truck: null == truck
          ? _value.truck
          : truck // ignore: cast_nullable_to_non_nullable
              as Truck,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'route_plan_id') required this.routePlanId,
      required final List<Location> locations,
      required this.trip,
      required this.truck})
      : _locations = locations;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'route_plan_id')
  final int routePlanId;
  final List<Location> _locations;
  @override
  List<Location> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  final Trip trip;
  @override
  final Truck truck;

  @override
  String toString() {
    return 'Data(routePlanId: $routePlanId, locations: $locations, trip: $trip, truck: $truck)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.routePlanId, routePlanId) ||
                other.routePlanId == routePlanId) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.truck, truck) || other.truck == truck));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routePlanId,
      const DeepCollectionEquality().hash(_locations), trip, truck);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: 'route_plan_id') required final int routePlanId,
      required final List<Location> locations,
      required final Trip trip,
      required final Truck truck}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'route_plan_id')
  int get routePlanId;
  @override
  List<Location> get locations;
  @override
  Trip get trip;
  @override
  Truck get truck;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'location_id')
  int get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'route_plan_id')
  int get routePlanId => throw _privateConstructorUsedError;
  int get unloadingTime => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {@JsonKey(name: 'location_id') int locationId,
      @JsonKey(name: 'route_plan_id') int routePlanId,
      int unloadingTime,
      String name,
      double longitude,
      double latitude,
      int order});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = null,
    Object? routePlanId = null,
    Object? unloadingTime = null,
    Object? name = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int,
      routePlanId: null == routePlanId
          ? _value.routePlanId
          : routePlanId // ignore: cast_nullable_to_non_nullable
              as int,
      unloadingTime: null == unloadingTime
          ? _value.unloadingTime
          : unloadingTime // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location_id') int locationId,
      @JsonKey(name: 'route_plan_id') int routePlanId,
      int unloadingTime,
      String name,
      double longitude,
      double latitude,
      int order});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = null,
    Object? routePlanId = null,
    Object? unloadingTime = null,
    Object? name = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? order = null,
  }) {
    return _then(_$LocationImpl(
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int,
      routePlanId: null == routePlanId
          ? _value.routePlanId
          : routePlanId // ignore: cast_nullable_to_non_nullable
              as int,
      unloadingTime: null == unloadingTime
          ? _value.unloadingTime
          : unloadingTime // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {@JsonKey(name: 'location_id') required this.locationId,
      @JsonKey(name: 'route_plan_id') required this.routePlanId,
      required this.unloadingTime,
      required this.name,
      required this.longitude,
      required this.latitude,
      required this.order});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  @JsonKey(name: 'location_id')
  final int locationId;
  @override
  @JsonKey(name: 'route_plan_id')
  final int routePlanId;
  @override
  final int unloadingTime;
  @override
  final String name;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final int order;

  @override
  String toString() {
    return 'Location(locationId: $locationId, routePlanId: $routePlanId, unloadingTime: $unloadingTime, name: $name, longitude: $longitude, latitude: $latitude, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.routePlanId, routePlanId) ||
                other.routePlanId == routePlanId) &&
            (identical(other.unloadingTime, unloadingTime) ||
                other.unloadingTime == unloadingTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locationId, routePlanId,
      unloadingTime, name, longitude, latitude, order);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {@JsonKey(name: 'location_id') required final int locationId,
      @JsonKey(name: 'route_plan_id') required final int routePlanId,
      required final int unloadingTime,
      required final String name,
      required final double longitude,
      required final double latitude,
      required final int order}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  @JsonKey(name: 'location_id')
  int get locationId;
  @override
  @JsonKey(name: 'route_plan_id')
  int get routePlanId;
  @override
  int get unloadingTime;
  @override
  String get name;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  int get order;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  @JsonKey(name: 'trip_id')
  int get tripId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contract_id')
  int get contractId => throw _privateConstructorUsedError;
  @JsonKey(name: 'predefined_start_date')
  DateTime get predefinedStartDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'predefined_end_date')
  DateTime get predefinedEndDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_start_date')
  DateTime get actualStartDate => throw _privateConstructorUsedError;

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {@JsonKey(name: 'trip_id') int tripId,
      @JsonKey(name: 'contract_id') int contractId,
      @JsonKey(name: 'predefined_start_date') DateTime predefinedStartDate,
      @JsonKey(name: 'predefined_end_date') DateTime predefinedEndDate,
      @JsonKey(name: 'actual_start_date') DateTime actualStartDate});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? contractId = null,
    Object? predefinedStartDate = null,
    Object? predefinedEndDate = null,
    Object? actualStartDate = null,
  }) {
    return _then(_value.copyWith(
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      contractId: null == contractId
          ? _value.contractId
          : contractId // ignore: cast_nullable_to_non_nullable
              as int,
      predefinedStartDate: null == predefinedStartDate
          ? _value.predefinedStartDate
          : predefinedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      predefinedEndDate: null == predefinedEndDate
          ? _value.predefinedEndDate
          : predefinedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actualStartDate: null == actualStartDate
          ? _value.actualStartDate
          : actualStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$TripImplCopyWith(
          _$TripImpl value, $Res Function(_$TripImpl) then) =
      __$$TripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'trip_id') int tripId,
      @JsonKey(name: 'contract_id') int contractId,
      @JsonKey(name: 'predefined_start_date') DateTime predefinedStartDate,
      @JsonKey(name: 'predefined_end_date') DateTime predefinedEndDate,
      @JsonKey(name: 'actual_start_date') DateTime actualStartDate});
}

/// @nodoc
class __$$TripImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$TripImpl>
    implements _$$TripImplCopyWith<$Res> {
  __$$TripImplCopyWithImpl(_$TripImpl _value, $Res Function(_$TripImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? contractId = null,
    Object? predefinedStartDate = null,
    Object? predefinedEndDate = null,
    Object? actualStartDate = null,
  }) {
    return _then(_$TripImpl(
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      contractId: null == contractId
          ? _value.contractId
          : contractId // ignore: cast_nullable_to_non_nullable
              as int,
      predefinedStartDate: null == predefinedStartDate
          ? _value.predefinedStartDate
          : predefinedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      predefinedEndDate: null == predefinedEndDate
          ? _value.predefinedEndDate
          : predefinedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actualStartDate: null == actualStartDate
          ? _value.actualStartDate
          : actualStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripImpl implements _Trip {
  const _$TripImpl(
      {@JsonKey(name: 'trip_id') required this.tripId,
      @JsonKey(name: 'contract_id') required this.contractId,
      @JsonKey(name: 'predefined_start_date') required this.predefinedStartDate,
      @JsonKey(name: 'predefined_end_date') required this.predefinedEndDate,
      @JsonKey(name: 'actual_start_date') required this.actualStartDate});

  factory _$TripImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripImplFromJson(json);

  @override
  @JsonKey(name: 'trip_id')
  final int tripId;
  @override
  @JsonKey(name: 'contract_id')
  final int contractId;
  @override
  @JsonKey(name: 'predefined_start_date')
  final DateTime predefinedStartDate;
  @override
  @JsonKey(name: 'predefined_end_date')
  final DateTime predefinedEndDate;
  @override
  @JsonKey(name: 'actual_start_date')
  final DateTime actualStartDate;

  @override
  String toString() {
    return 'Trip(tripId: $tripId, contractId: $contractId, predefinedStartDate: $predefinedStartDate, predefinedEndDate: $predefinedEndDate, actualStartDate: $actualStartDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.contractId, contractId) ||
                other.contractId == contractId) &&
            (identical(other.predefinedStartDate, predefinedStartDate) ||
                other.predefinedStartDate == predefinedStartDate) &&
            (identical(other.predefinedEndDate, predefinedEndDate) ||
                other.predefinedEndDate == predefinedEndDate) &&
            (identical(other.actualStartDate, actualStartDate) ||
                other.actualStartDate == actualStartDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tripId, contractId,
      predefinedStartDate, predefinedEndDate, actualStartDate);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      __$$TripImplCopyWithImpl<_$TripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripImplToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {@JsonKey(name: 'trip_id') required final int tripId,
      @JsonKey(name: 'contract_id') required final int contractId,
      @JsonKey(name: 'predefined_start_date')
      required final DateTime predefinedStartDate,
      @JsonKey(name: 'predefined_end_date')
      required final DateTime predefinedEndDate,
      @JsonKey(name: 'actual_start_date')
      required final DateTime actualStartDate}) = _$TripImpl;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$TripImpl.fromJson;

  @override
  @JsonKey(name: 'trip_id')
  int get tripId;
  @override
  @JsonKey(name: 'contract_id')
  int get contractId;
  @override
  @JsonKey(name: 'predefined_start_date')
  DateTime get predefinedStartDate;
  @override
  @JsonKey(name: 'predefined_end_date')
  DateTime get predefinedEndDate;
  @override
  @JsonKey(name: 'actual_start_date')
  DateTime get actualStartDate;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Truck _$TruckFromJson(Map<String, dynamic> json) {
  return _Truck.fromJson(json);
}

/// @nodoc
mixin _$Truck {
  @JsonKey(name: 'truck_id')
  int get truckId => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get plate => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_weight')
  int get maxWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'transporter_id')
  int get transporterId => throw _privateConstructorUsedError;

  /// Serializes this Truck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Truck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TruckCopyWith<Truck> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TruckCopyWith<$Res> {
  factory $TruckCopyWith(Truck value, $Res Function(Truck) then) =
      _$TruckCopyWithImpl<$Res, Truck>;
  @useResult
  $Res call(
      {@JsonKey(name: 'truck_id') int truckId,
      String model,
      String plate,
      double height,
      double width,
      double length,
      @JsonKey(name: 'max_weight') int maxWeight,
      @JsonKey(name: 'transporter_id') int transporterId});
}

/// @nodoc
class _$TruckCopyWithImpl<$Res, $Val extends Truck>
    implements $TruckCopyWith<$Res> {
  _$TruckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Truck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? truckId = null,
    Object? model = null,
    Object? plate = null,
    Object? height = null,
    Object? width = null,
    Object? length = null,
    Object? maxWeight = null,
    Object? transporterId = null,
  }) {
    return _then(_value.copyWith(
      truckId: null == truckId
          ? _value.truckId
          : truckId // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      maxWeight: null == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as int,
      transporterId: null == transporterId
          ? _value.transporterId
          : transporterId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TruckImplCopyWith<$Res> implements $TruckCopyWith<$Res> {
  factory _$$TruckImplCopyWith(
          _$TruckImpl value, $Res Function(_$TruckImpl) then) =
      __$$TruckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'truck_id') int truckId,
      String model,
      String plate,
      double height,
      double width,
      double length,
      @JsonKey(name: 'max_weight') int maxWeight,
      @JsonKey(name: 'transporter_id') int transporterId});
}

/// @nodoc
class __$$TruckImplCopyWithImpl<$Res>
    extends _$TruckCopyWithImpl<$Res, _$TruckImpl>
    implements _$$TruckImplCopyWith<$Res> {
  __$$TruckImplCopyWithImpl(
      _$TruckImpl _value, $Res Function(_$TruckImpl) _then)
      : super(_value, _then);

  /// Create a copy of Truck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? truckId = null,
    Object? model = null,
    Object? plate = null,
    Object? height = null,
    Object? width = null,
    Object? length = null,
    Object? maxWeight = null,
    Object? transporterId = null,
  }) {
    return _then(_$TruckImpl(
      truckId: null == truckId
          ? _value.truckId
          : truckId // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      maxWeight: null == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as int,
      transporterId: null == transporterId
          ? _value.transporterId
          : transporterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TruckImpl implements _Truck {
  const _$TruckImpl(
      {@JsonKey(name: 'truck_id') required this.truckId,
      required this.model,
      required this.plate,
      required this.height,
      required this.width,
      required this.length,
      @JsonKey(name: 'max_weight') required this.maxWeight,
      @JsonKey(name: 'transporter_id') required this.transporterId});

  factory _$TruckImpl.fromJson(Map<String, dynamic> json) =>
      _$$TruckImplFromJson(json);

  @override
  @JsonKey(name: 'truck_id')
  final int truckId;
  @override
  final String model;
  @override
  final String plate;
  @override
  final double height;
  @override
  final double width;
  @override
  final double length;
  @override
  @JsonKey(name: 'max_weight')
  final int maxWeight;
  @override
  @JsonKey(name: 'transporter_id')
  final int transporterId;

  @override
  String toString() {
    return 'Truck(truckId: $truckId, model: $model, plate: $plate, height: $height, width: $width, length: $length, maxWeight: $maxWeight, transporterId: $transporterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TruckImpl &&
            (identical(other.truckId, truckId) || other.truckId == truckId) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.plate, plate) || other.plate == plate) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.maxWeight, maxWeight) ||
                other.maxWeight == maxWeight) &&
            (identical(other.transporterId, transporterId) ||
                other.transporterId == transporterId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, truckId, model, plate, height,
      width, length, maxWeight, transporterId);

  /// Create a copy of Truck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TruckImplCopyWith<_$TruckImpl> get copyWith =>
      __$$TruckImplCopyWithImpl<_$TruckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TruckImplToJson(
      this,
    );
  }
}

abstract class _Truck implements Truck {
  const factory _Truck(
          {@JsonKey(name: 'truck_id') required final int truckId,
          required final String model,
          required final String plate,
          required final double height,
          required final double width,
          required final double length,
          @JsonKey(name: 'max_weight') required final int maxWeight,
          @JsonKey(name: 'transporter_id') required final int transporterId}) =
      _$TruckImpl;

  factory _Truck.fromJson(Map<String, dynamic> json) = _$TruckImpl.fromJson;

  @override
  @JsonKey(name: 'truck_id')
  int get truckId;
  @override
  String get model;
  @override
  String get plate;
  @override
  double get height;
  @override
  double get width;
  @override
  double get length;
  @override
  @JsonKey(name: 'max_weight')
  int get maxWeight;
  @override
  @JsonKey(name: 'transporter_id')
  int get transporterId;

  /// Create a copy of Truck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TruckImplCopyWith<_$TruckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
