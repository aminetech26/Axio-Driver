// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) {
  return _DashboardResponse.fromJson(json);
}

/// @nodoc
mixin _$DashboardResponse {
  DashboardData get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this DashboardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardResponseCopyWith<DashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardResponseCopyWith<$Res> {
  factory $DashboardResponseCopyWith(
          DashboardResponse value, $Res Function(DashboardResponse) then) =
      _$DashboardResponseCopyWithImpl<$Res, DashboardResponse>;
  @useResult
  $Res call({DashboardData data, String message, bool success});

  $DashboardDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DashboardResponseCopyWithImpl<$Res, $Val extends DashboardResponse>
    implements $DashboardResponseCopyWith<$Res> {
  _$DashboardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DashboardData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardDataCopyWith<$Res> get data {
    return $DashboardDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardResponseImplCopyWith<$Res>
    implements $DashboardResponseCopyWith<$Res> {
  factory _$$DashboardResponseImplCopyWith(_$DashboardResponseImpl value,
          $Res Function(_$DashboardResponseImpl) then) =
      __$$DashboardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DashboardData data, String message, bool success});

  @override
  $DashboardDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DashboardResponseImplCopyWithImpl<$Res>
    extends _$DashboardResponseCopyWithImpl<$Res, _$DashboardResponseImpl>
    implements _$$DashboardResponseImplCopyWith<$Res> {
  __$$DashboardResponseImplCopyWithImpl(_$DashboardResponseImpl _value,
      $Res Function(_$DashboardResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_$DashboardResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DashboardData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardResponseImpl implements _DashboardResponse {
  const _$DashboardResponseImpl(
      {required this.data, required this.message, required this.success});

  factory _$DashboardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardResponseImplFromJson(json);

  @override
  final DashboardData data;
  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'DashboardResponse(data: $data, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, success);

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardResponseImplCopyWith<_$DashboardResponseImpl> get copyWith =>
      __$$DashboardResponseImplCopyWithImpl<_$DashboardResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardResponseImplToJson(
      this,
    );
  }
}

abstract class _DashboardResponse implements DashboardResponse {
  const factory _DashboardResponse(
      {required final DashboardData data,
      required final String message,
      required final bool success}) = _$DashboardResponseImpl;

  factory _DashboardResponse.fromJson(Map<String, dynamic> json) =
      _$DashboardResponseImpl.fromJson;

  @override
  DashboardData get data;
  @override
  String get message;
  @override
  bool get success;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardResponseImplCopyWith<_$DashboardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) {
  return _DashboardData.fromJson(json);
}

/// @nodoc
mixin _$DashboardData {
  DriverStats get stats => throw _privateConstructorUsedError;
  List<RecentActivity> get recentActivities =>
      throw _privateConstructorUsedError;
  ActiveMission? get activeMission => throw _privateConstructorUsedError;

  /// Serializes this DashboardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
          DashboardData value, $Res Function(DashboardData) then) =
      _$DashboardDataCopyWithImpl<$Res, DashboardData>;
  @useResult
  $Res call(
      {DriverStats stats,
      List<RecentActivity> recentActivities,
      ActiveMission? activeMission});

  $DriverStatsCopyWith<$Res> get stats;
  $ActiveMissionCopyWith<$Res>? get activeMission;
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res, $Val extends DashboardData>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stats = null,
    Object? recentActivities = null,
    Object? activeMission = freezed,
  }) {
    return _then(_value.copyWith(
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as DriverStats,
      recentActivities: null == recentActivities
          ? _value.recentActivities
          : recentActivities // ignore: cast_nullable_to_non_nullable
              as List<RecentActivity>,
      activeMission: freezed == activeMission
          ? _value.activeMission
          : activeMission // ignore: cast_nullable_to_non_nullable
              as ActiveMission?,
    ) as $Val);
  }

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverStatsCopyWith<$Res> get stats {
    return $DriverStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveMissionCopyWith<$Res>? get activeMission {
    if (_value.activeMission == null) {
      return null;
    }

    return $ActiveMissionCopyWith<$Res>(_value.activeMission!, (value) {
      return _then(_value.copyWith(activeMission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardDataImplCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$$DashboardDataImplCopyWith(
          _$DashboardDataImpl value, $Res Function(_$DashboardDataImpl) then) =
      __$$DashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DriverStats stats,
      List<RecentActivity> recentActivities,
      ActiveMission? activeMission});

  @override
  $DriverStatsCopyWith<$Res> get stats;
  @override
  $ActiveMissionCopyWith<$Res>? get activeMission;
}

/// @nodoc
class __$$DashboardDataImplCopyWithImpl<$Res>
    extends _$DashboardDataCopyWithImpl<$Res, _$DashboardDataImpl>
    implements _$$DashboardDataImplCopyWith<$Res> {
  __$$DashboardDataImplCopyWithImpl(
      _$DashboardDataImpl _value, $Res Function(_$DashboardDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stats = null,
    Object? recentActivities = null,
    Object? activeMission = freezed,
  }) {
    return _then(_$DashboardDataImpl(
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as DriverStats,
      recentActivities: null == recentActivities
          ? _value._recentActivities
          : recentActivities // ignore: cast_nullable_to_non_nullable
              as List<RecentActivity>,
      activeMission: freezed == activeMission
          ? _value.activeMission
          : activeMission // ignore: cast_nullable_to_non_nullable
              as ActiveMission?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataImpl implements _DashboardData {
  const _$DashboardDataImpl(
      {required this.stats,
      required final List<RecentActivity> recentActivities,
      required this.activeMission})
      : _recentActivities = recentActivities;

  factory _$DashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataImplFromJson(json);

  @override
  final DriverStats stats;
  final List<RecentActivity> _recentActivities;
  @override
  List<RecentActivity> get recentActivities {
    if (_recentActivities is EqualUnmodifiableListView)
      return _recentActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentActivities);
  }

  @override
  final ActiveMission? activeMission;

  @override
  String toString() {
    return 'DashboardData(stats: $stats, recentActivities: $recentActivities, activeMission: $activeMission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataImpl &&
            (identical(other.stats, stats) || other.stats == stats) &&
            const DeepCollectionEquality()
                .equals(other._recentActivities, _recentActivities) &&
            (identical(other.activeMission, activeMission) ||
                other.activeMission == activeMission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stats,
      const DeepCollectionEquality().hash(_recentActivities), activeMission);

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      __$$DashboardDataImplCopyWithImpl<_$DashboardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardDataImplToJson(
      this,
    );
  }
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData(
      {required final DriverStats stats,
      required final List<RecentActivity> recentActivities,
      required final ActiveMission? activeMission}) = _$DashboardDataImpl;

  factory _DashboardData.fromJson(Map<String, dynamic> json) =
      _$DashboardDataImpl.fromJson;

  @override
  DriverStats get stats;
  @override
  List<RecentActivity> get recentActivities;
  @override
  ActiveMission? get activeMission;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverStats _$DriverStatsFromJson(Map<String, dynamic> json) {
  return _DriverStats.fromJson(json);
}

/// @nodoc
mixin _$DriverStats {
  int get totalDeliveries => throw _privateConstructorUsedError;
  int get deliveriesThisMonth => throw _privateConstructorUsedError;
  double get totalDistance => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  /// Serializes this DriverStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverStatsCopyWith<DriverStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStatsCopyWith<$Res> {
  factory $DriverStatsCopyWith(
          DriverStats value, $Res Function(DriverStats) then) =
      _$DriverStatsCopyWithImpl<$Res, DriverStats>;
  @useResult
  $Res call(
      {int totalDeliveries,
      int deliveriesThisMonth,
      double totalDistance,
      double rating});
}

/// @nodoc
class _$DriverStatsCopyWithImpl<$Res, $Val extends DriverStats>
    implements $DriverStatsCopyWith<$Res> {
  _$DriverStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDeliveries = null,
    Object? deliveriesThisMonth = null,
    Object? totalDistance = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      totalDeliveries: null == totalDeliveries
          ? _value.totalDeliveries
          : totalDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      deliveriesThisMonth: null == deliveriesThisMonth
          ? _value.deliveriesThisMonth
          : deliveriesThisMonth // ignore: cast_nullable_to_non_nullable
              as int,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverStatsImplCopyWith<$Res>
    implements $DriverStatsCopyWith<$Res> {
  factory _$$DriverStatsImplCopyWith(
          _$DriverStatsImpl value, $Res Function(_$DriverStatsImpl) then) =
      __$$DriverStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalDeliveries,
      int deliveriesThisMonth,
      double totalDistance,
      double rating});
}

/// @nodoc
class __$$DriverStatsImplCopyWithImpl<$Res>
    extends _$DriverStatsCopyWithImpl<$Res, _$DriverStatsImpl>
    implements _$$DriverStatsImplCopyWith<$Res> {
  __$$DriverStatsImplCopyWithImpl(
      _$DriverStatsImpl _value, $Res Function(_$DriverStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDeliveries = null,
    Object? deliveriesThisMonth = null,
    Object? totalDistance = null,
    Object? rating = null,
  }) {
    return _then(_$DriverStatsImpl(
      totalDeliveries: null == totalDeliveries
          ? _value.totalDeliveries
          : totalDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      deliveriesThisMonth: null == deliveriesThisMonth
          ? _value.deliveriesThisMonth
          : deliveriesThisMonth // ignore: cast_nullable_to_non_nullable
              as int,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverStatsImpl implements _DriverStats {
  const _$DriverStatsImpl(
      {required this.totalDeliveries,
      required this.deliveriesThisMonth,
      required this.totalDistance,
      required this.rating});

  factory _$DriverStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverStatsImplFromJson(json);

  @override
  final int totalDeliveries;
  @override
  final int deliveriesThisMonth;
  @override
  final double totalDistance;
  @override
  final double rating;

  @override
  String toString() {
    return 'DriverStats(totalDeliveries: $totalDeliveries, deliveriesThisMonth: $deliveriesThisMonth, totalDistance: $totalDistance, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverStatsImpl &&
            (identical(other.totalDeliveries, totalDeliveries) ||
                other.totalDeliveries == totalDeliveries) &&
            (identical(other.deliveriesThisMonth, deliveriesThisMonth) ||
                other.deliveriesThisMonth == deliveriesThisMonth) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalDeliveries, deliveriesThisMonth, totalDistance, rating);

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverStatsImplCopyWith<_$DriverStatsImpl> get copyWith =>
      __$$DriverStatsImplCopyWithImpl<_$DriverStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverStatsImplToJson(
      this,
    );
  }
}

abstract class _DriverStats implements DriverStats {
  const factory _DriverStats(
      {required final int totalDeliveries,
      required final int deliveriesThisMonth,
      required final double totalDistance,
      required final double rating}) = _$DriverStatsImpl;

  factory _DriverStats.fromJson(Map<String, dynamic> json) =
      _$DriverStatsImpl.fromJson;

  @override
  int get totalDeliveries;
  @override
  int get deliveriesThisMonth;
  @override
  double get totalDistance;
  @override
  double get rating;

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverStatsImplCopyWith<_$DriverStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentActivity _$RecentActivityFromJson(Map<String, dynamic> json) {
  return _RecentActivity.fromJson(json);
}

/// @nodoc
mixin _$RecentActivity {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this RecentActivity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecentActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentActivityCopyWith<RecentActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentActivityCopyWith<$Res> {
  factory $RecentActivityCopyWith(
          RecentActivity value, $Res Function(RecentActivity) then) =
      _$RecentActivityCopyWithImpl<$Res, RecentActivity>;
  @useResult
  $Res call({String id, String type, String description, DateTime timestamp});
}

/// @nodoc
class _$RecentActivityCopyWithImpl<$Res, $Val extends RecentActivity>
    implements $RecentActivityCopyWith<$Res> {
  _$RecentActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? description = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentActivityImplCopyWith<$Res>
    implements $RecentActivityCopyWith<$Res> {
  factory _$$RecentActivityImplCopyWith(_$RecentActivityImpl value,
          $Res Function(_$RecentActivityImpl) then) =
      __$$RecentActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, String description, DateTime timestamp});
}

/// @nodoc
class __$$RecentActivityImplCopyWithImpl<$Res>
    extends _$RecentActivityCopyWithImpl<$Res, _$RecentActivityImpl>
    implements _$$RecentActivityImplCopyWith<$Res> {
  __$$RecentActivityImplCopyWithImpl(
      _$RecentActivityImpl _value, $Res Function(_$RecentActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecentActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? description = null,
    Object? timestamp = null,
  }) {
    return _then(_$RecentActivityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentActivityImpl implements _RecentActivity {
  const _$RecentActivityImpl(
      {required this.id,
      required this.type,
      required this.description,
      required this.timestamp});

  factory _$RecentActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentActivityImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String description;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'RecentActivity(id: $id, type: $type, description: $description, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, description, timestamp);

  /// Create a copy of RecentActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentActivityImplCopyWith<_$RecentActivityImpl> get copyWith =>
      __$$RecentActivityImplCopyWithImpl<_$RecentActivityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentActivityImplToJson(
      this,
    );
  }
}

abstract class _RecentActivity implements RecentActivity {
  const factory _RecentActivity(
      {required final String id,
      required final String type,
      required final String description,
      required final DateTime timestamp}) = _$RecentActivityImpl;

  factory _RecentActivity.fromJson(Map<String, dynamic> json) =
      _$RecentActivityImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get description;
  @override
  DateTime get timestamp;

  /// Create a copy of RecentActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentActivityImplCopyWith<_$RecentActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveMission _$ActiveMissionFromJson(Map<String, dynamic> json) {
  return _ActiveMission.fromJson(json);
}

/// @nodoc
mixin _$ActiveMission {
  String get id => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  DateTime get expectedDelivery => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  int get stopsCompleted => throw _privateConstructorUsedError;
  int get totalStops => throw _privateConstructorUsedError;

  /// Serializes this ActiveMission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveMission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveMissionCopyWith<ActiveMission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveMissionCopyWith<$Res> {
  factory $ActiveMissionCopyWith(
          ActiveMission value, $Res Function(ActiveMission) then) =
      _$ActiveMissionCopyWithImpl<$Res, ActiveMission>;
  @useResult
  $Res call(
      {String id,
      String destination,
      DateTime expectedDelivery,
      double progress,
      int stopsCompleted,
      int totalStops});
}

/// @nodoc
class _$ActiveMissionCopyWithImpl<$Res, $Val extends ActiveMission>
    implements $ActiveMissionCopyWith<$Res> {
  _$ActiveMissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveMission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? destination = null,
    Object? expectedDelivery = null,
    Object? progress = null,
    Object? stopsCompleted = null,
    Object? totalStops = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      expectedDelivery: null == expectedDelivery
          ? _value.expectedDelivery
          : expectedDelivery // ignore: cast_nullable_to_non_nullable
              as DateTime,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      stopsCompleted: null == stopsCompleted
          ? _value.stopsCompleted
          : stopsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      totalStops: null == totalStops
          ? _value.totalStops
          : totalStops // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveMissionImplCopyWith<$Res>
    implements $ActiveMissionCopyWith<$Res> {
  factory _$$ActiveMissionImplCopyWith(
          _$ActiveMissionImpl value, $Res Function(_$ActiveMissionImpl) then) =
      __$$ActiveMissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String destination,
      DateTime expectedDelivery,
      double progress,
      int stopsCompleted,
      int totalStops});
}

/// @nodoc
class __$$ActiveMissionImplCopyWithImpl<$Res>
    extends _$ActiveMissionCopyWithImpl<$Res, _$ActiveMissionImpl>
    implements _$$ActiveMissionImplCopyWith<$Res> {
  __$$ActiveMissionImplCopyWithImpl(
      _$ActiveMissionImpl _value, $Res Function(_$ActiveMissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveMission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? destination = null,
    Object? expectedDelivery = null,
    Object? progress = null,
    Object? stopsCompleted = null,
    Object? totalStops = null,
  }) {
    return _then(_$ActiveMissionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      expectedDelivery: null == expectedDelivery
          ? _value.expectedDelivery
          : expectedDelivery // ignore: cast_nullable_to_non_nullable
              as DateTime,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      stopsCompleted: null == stopsCompleted
          ? _value.stopsCompleted
          : stopsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      totalStops: null == totalStops
          ? _value.totalStops
          : totalStops // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveMissionImpl implements _ActiveMission {
  const _$ActiveMissionImpl(
      {required this.id,
      required this.destination,
      required this.expectedDelivery,
      required this.progress,
      required this.stopsCompleted,
      required this.totalStops});

  factory _$ActiveMissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveMissionImplFromJson(json);

  @override
  final String id;
  @override
  final String destination;
  @override
  final DateTime expectedDelivery;
  @override
  final double progress;
  @override
  final int stopsCompleted;
  @override
  final int totalStops;

  @override
  String toString() {
    return 'ActiveMission(id: $id, destination: $destination, expectedDelivery: $expectedDelivery, progress: $progress, stopsCompleted: $stopsCompleted, totalStops: $totalStops)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveMissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.expectedDelivery, expectedDelivery) ||
                other.expectedDelivery == expectedDelivery) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.stopsCompleted, stopsCompleted) ||
                other.stopsCompleted == stopsCompleted) &&
            (identical(other.totalStops, totalStops) ||
                other.totalStops == totalStops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, destination,
      expectedDelivery, progress, stopsCompleted, totalStops);

  /// Create a copy of ActiveMission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveMissionImplCopyWith<_$ActiveMissionImpl> get copyWith =>
      __$$ActiveMissionImplCopyWithImpl<_$ActiveMissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveMissionImplToJson(
      this,
    );
  }
}

abstract class _ActiveMission implements ActiveMission {
  const factory _ActiveMission(
      {required final String id,
      required final String destination,
      required final DateTime expectedDelivery,
      required final double progress,
      required final int stopsCompleted,
      required final int totalStops}) = _$ActiveMissionImpl;

  factory _ActiveMission.fromJson(Map<String, dynamic> json) =
      _$ActiveMissionImpl.fromJson;

  @override
  String get id;
  @override
  String get destination;
  @override
  DateTime get expectedDelivery;
  @override
  double get progress;
  @override
  int get stopsCompleted;
  @override
  int get totalStops;

  /// Create a copy of ActiveMission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveMissionImplCopyWith<_$ActiveMissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
