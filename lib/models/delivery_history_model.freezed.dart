// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryHistoryResponse _$DeliveryHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveryHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveryHistoryResponse {
  List<DeliveryRecord> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  PaginationInfo get pagination => throw _privateConstructorUsedError;

  /// Serializes this DeliveryHistoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryHistoryResponseCopyWith<DeliveryHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryHistoryResponseCopyWith<$Res> {
  factory $DeliveryHistoryResponseCopyWith(DeliveryHistoryResponse value,
          $Res Function(DeliveryHistoryResponse) then) =
      _$DeliveryHistoryResponseCopyWithImpl<$Res, DeliveryHistoryResponse>;
  @useResult
  $Res call(
      {List<DeliveryRecord> data,
      String message,
      bool success,
      PaginationInfo pagination});

  $PaginationInfoCopyWith<$Res> get pagination;
}

/// @nodoc
class _$DeliveryHistoryResponseCopyWithImpl<$Res,
        $Val extends DeliveryHistoryResponse>
    implements $DeliveryHistoryResponseCopyWith<$Res> {
  _$DeliveryHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? success = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeliveryRecord>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationInfo,
    ) as $Val);
  }

  /// Create a copy of DeliveryHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationInfoCopyWith<$Res> get pagination {
    return $PaginationInfoCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryHistoryResponseImplCopyWith<$Res>
    implements $DeliveryHistoryResponseCopyWith<$Res> {
  factory _$$DeliveryHistoryResponseImplCopyWith(
          _$DeliveryHistoryResponseImpl value,
          $Res Function(_$DeliveryHistoryResponseImpl) then) =
      __$$DeliveryHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeliveryRecord> data,
      String message,
      bool success,
      PaginationInfo pagination});

  @override
  $PaginationInfoCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$DeliveryHistoryResponseImplCopyWithImpl<$Res>
    extends _$DeliveryHistoryResponseCopyWithImpl<$Res,
        _$DeliveryHistoryResponseImpl>
    implements _$$DeliveryHistoryResponseImplCopyWith<$Res> {
  __$$DeliveryHistoryResponseImplCopyWithImpl(
      _$DeliveryHistoryResponseImpl _value,
      $Res Function(_$DeliveryHistoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? success = null,
    Object? pagination = null,
  }) {
    return _then(_$DeliveryHistoryResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeliveryRecord>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryHistoryResponseImpl implements _DeliveryHistoryResponse {
  const _$DeliveryHistoryResponseImpl(
      {required final List<DeliveryRecord> data,
      required this.message,
      required this.success,
      required this.pagination})
      : _data = data;

  factory _$DeliveryHistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryHistoryResponseImplFromJson(json);

  final List<DeliveryRecord> _data;
  @override
  List<DeliveryRecord> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;
  @override
  final bool success;
  @override
  final PaginationInfo pagination;

  @override
  String toString() {
    return 'DeliveryHistoryResponse(data: $data, message: $message, success: $success, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryHistoryResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), message, success, pagination);

  /// Create a copy of DeliveryHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryHistoryResponseImplCopyWith<_$DeliveryHistoryResponseImpl>
      get copyWith => __$$DeliveryHistoryResponseImplCopyWithImpl<
          _$DeliveryHistoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryHistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _DeliveryHistoryResponse implements DeliveryHistoryResponse {
  const factory _DeliveryHistoryResponse(
          {required final List<DeliveryRecord> data,
          required final String message,
          required final bool success,
          required final PaginationInfo pagination}) =
      _$DeliveryHistoryResponseImpl;

  factory _DeliveryHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$DeliveryHistoryResponseImpl.fromJson;

  @override
  List<DeliveryRecord> get data;
  @override
  String get message;
  @override
  bool get success;
  @override
  PaginationInfo get pagination;

  /// Create a copy of DeliveryHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryHistoryResponseImplCopyWith<_$DeliveryHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveryRecord _$DeliveryRecordFromJson(Map<String, dynamic> json) {
  return _DeliveryRecord.fromJson(json);
}

/// @nodoc
mixin _$DeliveryRecord {
  String get id => throw _privateConstructorUsedError;
  String get missionId => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  List<DeliveryStop> get stops => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  /// Serializes this DeliveryRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryRecordCopyWith<DeliveryRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryRecordCopyWith<$Res> {
  factory $DeliveryRecordCopyWith(
          DeliveryRecord value, $Res Function(DeliveryRecord) then) =
      _$DeliveryRecordCopyWithImpl<$Res, DeliveryRecord>;
  @useResult
  $Res call(
      {String id,
      String missionId,
      String destination,
      DateTime startDate,
      DateTime endDate,
      double distance,
      List<DeliveryStop> stops,
      String status,
      double rating});
}

/// @nodoc
class _$DeliveryRecordCopyWithImpl<$Res, $Val extends DeliveryRecord>
    implements $DeliveryRecordCopyWith<$Res> {
  _$DeliveryRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? missionId = null,
    Object? destination = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? distance = null,
    Object? stops = null,
    Object? status = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      missionId: null == missionId
          ? _value.missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      stops: null == stops
          ? _value.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<DeliveryStop>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryRecordImplCopyWith<$Res>
    implements $DeliveryRecordCopyWith<$Res> {
  factory _$$DeliveryRecordImplCopyWith(_$DeliveryRecordImpl value,
          $Res Function(_$DeliveryRecordImpl) then) =
      __$$DeliveryRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String missionId,
      String destination,
      DateTime startDate,
      DateTime endDate,
      double distance,
      List<DeliveryStop> stops,
      String status,
      double rating});
}

/// @nodoc
class __$$DeliveryRecordImplCopyWithImpl<$Res>
    extends _$DeliveryRecordCopyWithImpl<$Res, _$DeliveryRecordImpl>
    implements _$$DeliveryRecordImplCopyWith<$Res> {
  __$$DeliveryRecordImplCopyWithImpl(
      _$DeliveryRecordImpl _value, $Res Function(_$DeliveryRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? missionId = null,
    Object? destination = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? distance = null,
    Object? stops = null,
    Object? status = null,
    Object? rating = null,
  }) {
    return _then(_$DeliveryRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      missionId: null == missionId
          ? _value.missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      stops: null == stops
          ? _value._stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<DeliveryStop>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryRecordImpl implements _DeliveryRecord {
  const _$DeliveryRecordImpl(
      {required this.id,
      required this.missionId,
      required this.destination,
      required this.startDate,
      required this.endDate,
      required this.distance,
      required final List<DeliveryStop> stops,
      required this.status,
      required this.rating})
      : _stops = stops;

  factory _$DeliveryRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryRecordImplFromJson(json);

  @override
  final String id;
  @override
  final String missionId;
  @override
  final String destination;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final double distance;
  final List<DeliveryStop> _stops;
  @override
  List<DeliveryStop> get stops {
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stops);
  }

  @override
  final String status;
  @override
  final double rating;

  @override
  String toString() {
    return 'DeliveryRecord(id: $id, missionId: $missionId, destination: $destination, startDate: $startDate, endDate: $endDate, distance: $distance, stops: $stops, status: $status, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.missionId, missionId) ||
                other.missionId == missionId) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(other._stops, _stops) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      missionId,
      destination,
      startDate,
      endDate,
      distance,
      const DeepCollectionEquality().hash(_stops),
      status,
      rating);

  /// Create a copy of DeliveryRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryRecordImplCopyWith<_$DeliveryRecordImpl> get copyWith =>
      __$$DeliveryRecordImplCopyWithImpl<_$DeliveryRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryRecordImplToJson(
      this,
    );
  }
}

abstract class _DeliveryRecord implements DeliveryRecord {
  const factory _DeliveryRecord(
      {required final String id,
      required final String missionId,
      required final String destination,
      required final DateTime startDate,
      required final DateTime endDate,
      required final double distance,
      required final List<DeliveryStop> stops,
      required final String status,
      required final double rating}) = _$DeliveryRecordImpl;

  factory _DeliveryRecord.fromJson(Map<String, dynamic> json) =
      _$DeliveryRecordImpl.fromJson;

  @override
  String get id;
  @override
  String get missionId;
  @override
  String get destination;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  double get distance;
  @override
  List<DeliveryStop> get stops;
  @override
  String get status;
  @override
  double get rating;

  /// Create a copy of DeliveryRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryRecordImplCopyWith<_$DeliveryRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryStop _$DeliveryStopFromJson(Map<String, dynamic> json) {
  return _DeliveryStop.fromJson(json);
}

/// @nodoc
mixin _$DeliveryStop {
  String get address => throw _privateConstructorUsedError;
  DateTime get arrivalTime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this DeliveryStop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryStopCopyWith<DeliveryStop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryStopCopyWith<$Res> {
  factory $DeliveryStopCopyWith(
          DeliveryStop value, $Res Function(DeliveryStop) then) =
      _$DeliveryStopCopyWithImpl<$Res, DeliveryStop>;
  @useResult
  $Res call({String address, DateTime arrivalTime, String status});
}

/// @nodoc
class _$DeliveryStopCopyWithImpl<$Res, $Val extends DeliveryStop>
    implements $DeliveryStopCopyWith<$Res> {
  _$DeliveryStopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryStop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? arrivalTime = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryStopImplCopyWith<$Res>
    implements $DeliveryStopCopyWith<$Res> {
  factory _$$DeliveryStopImplCopyWith(
          _$DeliveryStopImpl value, $Res Function(_$DeliveryStopImpl) then) =
      __$$DeliveryStopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, DateTime arrivalTime, String status});
}

/// @nodoc
class __$$DeliveryStopImplCopyWithImpl<$Res>
    extends _$DeliveryStopCopyWithImpl<$Res, _$DeliveryStopImpl>
    implements _$$DeliveryStopImplCopyWith<$Res> {
  __$$DeliveryStopImplCopyWithImpl(
      _$DeliveryStopImpl _value, $Res Function(_$DeliveryStopImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryStop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? arrivalTime = null,
    Object? status = null,
  }) {
    return _then(_$DeliveryStopImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryStopImpl implements _DeliveryStop {
  const _$DeliveryStopImpl(
      {required this.address, required this.arrivalTime, required this.status});

  factory _$DeliveryStopImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryStopImplFromJson(json);

  @override
  final String address;
  @override
  final DateTime arrivalTime;
  @override
  final String status;

  @override
  String toString() {
    return 'DeliveryStop(address: $address, arrivalTime: $arrivalTime, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryStopImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, arrivalTime, status);

  /// Create a copy of DeliveryStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryStopImplCopyWith<_$DeliveryStopImpl> get copyWith =>
      __$$DeliveryStopImplCopyWithImpl<_$DeliveryStopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryStopImplToJson(
      this,
    );
  }
}

abstract class _DeliveryStop implements DeliveryStop {
  const factory _DeliveryStop(
      {required final String address,
      required final DateTime arrivalTime,
      required final String status}) = _$DeliveryStopImpl;

  factory _DeliveryStop.fromJson(Map<String, dynamic> json) =
      _$DeliveryStopImpl.fromJson;

  @override
  String get address;
  @override
  DateTime get arrivalTime;
  @override
  String get status;

  /// Create a copy of DeliveryStop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryStopImplCopyWith<_$DeliveryStopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationInfo _$PaginationInfoFromJson(Map<String, dynamic> json) {
  return _PaginationInfo.fromJson(json);
}

/// @nodoc
mixin _$PaginationInfo {
  int get currentPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;

  /// Serializes this PaginationInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationInfoCopyWith<PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoCopyWith<$Res> {
  factory $PaginationInfoCopyWith(
          PaginationInfo value, $Res Function(PaginationInfo) then) =
      _$PaginationInfoCopyWithImpl<$Res, PaginationInfo>;
  @useResult
  $Res call(
      {int currentPage, int totalPages, int itemsPerPage, int totalItems});
}

/// @nodoc
class _$PaginationInfoCopyWithImpl<$Res, $Val extends PaginationInfo>
    implements $PaginationInfoCopyWith<$Res> {
  _$PaginationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? totalPages = null,
    Object? itemsPerPage = null,
    Object? totalItems = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationInfoImplCopyWith<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  factory _$$PaginationInfoImplCopyWith(_$PaginationInfoImpl value,
          $Res Function(_$PaginationInfoImpl) then) =
      __$$PaginationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage, int totalPages, int itemsPerPage, int totalItems});
}

/// @nodoc
class __$$PaginationInfoImplCopyWithImpl<$Res>
    extends _$PaginationInfoCopyWithImpl<$Res, _$PaginationInfoImpl>
    implements _$$PaginationInfoImplCopyWith<$Res> {
  __$$PaginationInfoImplCopyWithImpl(
      _$PaginationInfoImpl _value, $Res Function(_$PaginationInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? totalPages = null,
    Object? itemsPerPage = null,
    Object? totalItems = null,
  }) {
    return _then(_$PaginationInfoImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationInfoImpl implements _PaginationInfo {
  const _$PaginationInfoImpl(
      {required this.currentPage,
      required this.totalPages,
      required this.itemsPerPage,
      required this.totalItems});

  factory _$PaginationInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationInfoImplFromJson(json);

  @override
  final int currentPage;
  @override
  final int totalPages;
  @override
  final int itemsPerPage;
  @override
  final int totalItems;

  @override
  String toString() {
    return 'PaginationInfo(currentPage: $currentPage, totalPages: $totalPages, itemsPerPage: $itemsPerPage, totalItems: $totalItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationInfoImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, totalPages, itemsPerPage, totalItems);

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationInfoImplCopyWith<_$PaginationInfoImpl> get copyWith =>
      __$$PaginationInfoImplCopyWithImpl<_$PaginationInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationInfoImplToJson(
      this,
    );
  }
}

abstract class _PaginationInfo implements PaginationInfo {
  const factory _PaginationInfo(
      {required final int currentPage,
      required final int totalPages,
      required final int itemsPerPage,
      required final int totalItems}) = _$PaginationInfoImpl;

  factory _PaginationInfo.fromJson(Map<String, dynamic> json) =
      _$PaginationInfoImpl.fromJson;

  @override
  int get currentPage;
  @override
  int get totalPages;
  @override
  int get itemsPerPage;
  @override
  int get totalItems;

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationInfoImplCopyWith<_$PaginationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
