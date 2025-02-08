// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DriverProfileResponse _$DriverProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _DriverProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$DriverProfileResponse {
  DriverProfileData get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this DriverProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverProfileResponseCopyWith<DriverProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverProfileResponseCopyWith<$Res> {
  factory $DriverProfileResponseCopyWith(DriverProfileResponse value,
          $Res Function(DriverProfileResponse) then) =
      _$DriverProfileResponseCopyWithImpl<$Res, DriverProfileResponse>;
  @useResult
  $Res call({DriverProfileData data, String message, bool success});

  $DriverProfileDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DriverProfileResponseCopyWithImpl<$Res,
        $Val extends DriverProfileResponse>
    implements $DriverProfileResponseCopyWith<$Res> {
  _$DriverProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverProfileResponse
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
              as DriverProfileData,
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

  /// Create a copy of DriverProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverProfileDataCopyWith<$Res> get data {
    return $DriverProfileDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverProfileResponseImplCopyWith<$Res>
    implements $DriverProfileResponseCopyWith<$Res> {
  factory _$$DriverProfileResponseImplCopyWith(
          _$DriverProfileResponseImpl value,
          $Res Function(_$DriverProfileResponseImpl) then) =
      __$$DriverProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DriverProfileData data, String message, bool success});

  @override
  $DriverProfileDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DriverProfileResponseImplCopyWithImpl<$Res>
    extends _$DriverProfileResponseCopyWithImpl<$Res,
        _$DriverProfileResponseImpl>
    implements _$$DriverProfileResponseImplCopyWith<$Res> {
  __$$DriverProfileResponseImplCopyWithImpl(_$DriverProfileResponseImpl _value,
      $Res Function(_$DriverProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_$DriverProfileResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DriverProfileData,
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
class _$DriverProfileResponseImpl implements _DriverProfileResponse {
  const _$DriverProfileResponseImpl(
      {required this.data, required this.message, required this.success});

  factory _$DriverProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverProfileResponseImplFromJson(json);

  @override
  final DriverProfileData data;
  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'DriverProfileResponse(data: $data, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverProfileResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, success);

  /// Create a copy of DriverProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverProfileResponseImplCopyWith<_$DriverProfileResponseImpl>
      get copyWith => __$$DriverProfileResponseImplCopyWithImpl<
          _$DriverProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _DriverProfileResponse implements DriverProfileResponse {
  const factory _DriverProfileResponse(
      {required final DriverProfileData data,
      required final String message,
      required final bool success}) = _$DriverProfileResponseImpl;

  factory _DriverProfileResponse.fromJson(Map<String, dynamic> json) =
      _$DriverProfileResponseImpl.fromJson;

  @override
  DriverProfileData get data;
  @override
  String get message;
  @override
  bool get success;

  /// Create a copy of DriverProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverProfileResponseImplCopyWith<_$DriverProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DriverProfileData _$DriverProfileDataFromJson(Map<String, dynamic> json) {
  return _DriverProfileData.fromJson(json);
}

/// @nodoc
mixin _$DriverProfileData {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  LicenseInfo get license => throw _privateConstructorUsedError;
  VehicleInfo get currentVehicle => throw _privateConstructorUsedError;
  DriverStats get stats => throw _privateConstructorUsedError;
  List<Certificate> get certificates => throw _privateConstructorUsedError;

  /// Serializes this DriverProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverProfileDataCopyWith<DriverProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverProfileDataCopyWith<$Res> {
  factory $DriverProfileDataCopyWith(
          DriverProfileData value, $Res Function(DriverProfileData) then) =
      _$DriverProfileDataCopyWithImpl<$Res, DriverProfileData>;
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String email,
      String phone,
      String photoUrl,
      LicenseInfo license,
      VehicleInfo currentVehicle,
      DriverStats stats,
      List<Certificate> certificates});

  $LicenseInfoCopyWith<$Res> get license;
  $VehicleInfoCopyWith<$Res> get currentVehicle;
  $DriverStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$DriverProfileDataCopyWithImpl<$Res, $Val extends DriverProfileData>
    implements $DriverProfileDataCopyWith<$Res> {
  _$DriverProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? photoUrl = null,
    Object? license = null,
    Object? currentVehicle = null,
    Object? stats = null,
    Object? certificates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as LicenseInfo,
      currentVehicle: null == currentVehicle
          ? _value.currentVehicle
          : currentVehicle // ignore: cast_nullable_to_non_nullable
              as VehicleInfo,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as DriverStats,
      certificates: null == certificates
          ? _value.certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<Certificate>,
    ) as $Val);
  }

  /// Create a copy of DriverProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LicenseInfoCopyWith<$Res> get license {
    return $LicenseInfoCopyWith<$Res>(_value.license, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }

  /// Create a copy of DriverProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VehicleInfoCopyWith<$Res> get currentVehicle {
    return $VehicleInfoCopyWith<$Res>(_value.currentVehicle, (value) {
      return _then(_value.copyWith(currentVehicle: value) as $Val);
    });
  }

  /// Create a copy of DriverProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverStatsCopyWith<$Res> get stats {
    return $DriverStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverProfileDataImplCopyWith<$Res>
    implements $DriverProfileDataCopyWith<$Res> {
  factory _$$DriverProfileDataImplCopyWith(_$DriverProfileDataImpl value,
          $Res Function(_$DriverProfileDataImpl) then) =
      __$$DriverProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String email,
      String phone,
      String photoUrl,
      LicenseInfo license,
      VehicleInfo currentVehicle,
      DriverStats stats,
      List<Certificate> certificates});

  @override
  $LicenseInfoCopyWith<$Res> get license;
  @override
  $VehicleInfoCopyWith<$Res> get currentVehicle;
  @override
  $DriverStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$DriverProfileDataImplCopyWithImpl<$Res>
    extends _$DriverProfileDataCopyWithImpl<$Res, _$DriverProfileDataImpl>
    implements _$$DriverProfileDataImplCopyWith<$Res> {
  __$$DriverProfileDataImplCopyWithImpl(_$DriverProfileDataImpl _value,
      $Res Function(_$DriverProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? photoUrl = null,
    Object? license = null,
    Object? currentVehicle = null,
    Object? stats = null,
    Object? certificates = null,
  }) {
    return _then(_$DriverProfileDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as LicenseInfo,
      currentVehicle: null == currentVehicle
          ? _value.currentVehicle
          : currentVehicle // ignore: cast_nullable_to_non_nullable
              as VehicleInfo,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as DriverStats,
      certificates: null == certificates
          ? _value._certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<Certificate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverProfileDataImpl implements _DriverProfileData {
  const _$DriverProfileDataImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.photoUrl,
      required this.license,
      required this.currentVehicle,
      required this.stats,
      required final List<Certificate> certificates})
      : _certificates = certificates;

  factory _$DriverProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverProfileDataImplFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String photoUrl;
  @override
  final LicenseInfo license;
  @override
  final VehicleInfo currentVehicle;
  @override
  final DriverStats stats;
  final List<Certificate> _certificates;
  @override
  List<Certificate> get certificates {
    if (_certificates is EqualUnmodifiableListView) return _certificates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certificates);
  }

  @override
  String toString() {
    return 'DriverProfileData(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, photoUrl: $photoUrl, license: $license, currentVehicle: $currentVehicle, stats: $stats, certificates: $certificates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverProfileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.currentVehicle, currentVehicle) ||
                other.currentVehicle == currentVehicle) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            const DeepCollectionEquality()
                .equals(other._certificates, _certificates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      email,
      phone,
      photoUrl,
      license,
      currentVehicle,
      stats,
      const DeepCollectionEquality().hash(_certificates));

  /// Create a copy of DriverProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverProfileDataImplCopyWith<_$DriverProfileDataImpl> get copyWith =>
      __$$DriverProfileDataImplCopyWithImpl<_$DriverProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverProfileDataImplToJson(
      this,
    );
  }
}

abstract class _DriverProfileData implements DriverProfileData {
  const factory _DriverProfileData(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String phone,
      required final String photoUrl,
      required final LicenseInfo license,
      required final VehicleInfo currentVehicle,
      required final DriverStats stats,
      required final List<Certificate> certificates}) = _$DriverProfileDataImpl;

  factory _DriverProfileData.fromJson(Map<String, dynamic> json) =
      _$DriverProfileDataImpl.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get photoUrl;
  @override
  LicenseInfo get license;
  @override
  VehicleInfo get currentVehicle;
  @override
  DriverStats get stats;
  @override
  List<Certificate> get certificates;

  /// Create a copy of DriverProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverProfileDataImplCopyWith<_$DriverProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LicenseInfo _$LicenseInfoFromJson(Map<String, dynamic> json) {
  return _LicenseInfo.fromJson(json);
}

/// @nodoc
mixin _$LicenseInfo {
  String get number => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get expiryDate => throw _privateConstructorUsedError;

  /// Serializes this LicenseInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LicenseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LicenseInfoCopyWith<LicenseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseInfoCopyWith<$Res> {
  factory $LicenseInfoCopyWith(
          LicenseInfo value, $Res Function(LicenseInfo) then) =
      _$LicenseInfoCopyWithImpl<$Res, LicenseInfo>;
  @useResult
  $Res call({String number, String type, DateTime expiryDate});
}

/// @nodoc
class _$LicenseInfoCopyWithImpl<$Res, $Val extends LicenseInfo>
    implements $LicenseInfoCopyWith<$Res> {
  _$LicenseInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LicenseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? type = null,
    Object? expiryDate = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LicenseInfoImplCopyWith<$Res>
    implements $LicenseInfoCopyWith<$Res> {
  factory _$$LicenseInfoImplCopyWith(
          _$LicenseInfoImpl value, $Res Function(_$LicenseInfoImpl) then) =
      __$$LicenseInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String number, String type, DateTime expiryDate});
}

/// @nodoc
class __$$LicenseInfoImplCopyWithImpl<$Res>
    extends _$LicenseInfoCopyWithImpl<$Res, _$LicenseInfoImpl>
    implements _$$LicenseInfoImplCopyWith<$Res> {
  __$$LicenseInfoImplCopyWithImpl(
      _$LicenseInfoImpl _value, $Res Function(_$LicenseInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LicenseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? type = null,
    Object? expiryDate = null,
  }) {
    return _then(_$LicenseInfoImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LicenseInfoImpl implements _LicenseInfo {
  const _$LicenseInfoImpl(
      {required this.number, required this.type, required this.expiryDate});

  factory _$LicenseInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LicenseInfoImplFromJson(json);

  @override
  final String number;
  @override
  final String type;
  @override
  final DateTime expiryDate;

  @override
  String toString() {
    return 'LicenseInfo(number: $number, type: $type, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicenseInfoImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, type, expiryDate);

  /// Create a copy of LicenseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LicenseInfoImplCopyWith<_$LicenseInfoImpl> get copyWith =>
      __$$LicenseInfoImplCopyWithImpl<_$LicenseInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LicenseInfoImplToJson(
      this,
    );
  }
}

abstract class _LicenseInfo implements LicenseInfo {
  const factory _LicenseInfo(
      {required final String number,
      required final String type,
      required final DateTime expiryDate}) = _$LicenseInfoImpl;

  factory _LicenseInfo.fromJson(Map<String, dynamic> json) =
      _$LicenseInfoImpl.fromJson;

  @override
  String get number;
  @override
  String get type;
  @override
  DateTime get expiryDate;

  /// Create a copy of LicenseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LicenseInfoImplCopyWith<_$LicenseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Certificate _$CertificateFromJson(Map<String, dynamic> json) {
  return _Certificate.fromJson(json);
}

/// @nodoc
mixin _$Certificate {
  String get name => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  DateTime get expiryDate => throw _privateConstructorUsedError;

  /// Serializes this Certificate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificateCopyWith<Certificate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateCopyWith<$Res> {
  factory $CertificateCopyWith(
          Certificate value, $Res Function(Certificate) then) =
      _$CertificateCopyWithImpl<$Res, Certificate>;
  @useResult
  $Res call({String name, DateTime issueDate, DateTime expiryDate});
}

/// @nodoc
class _$CertificateCopyWithImpl<$Res, $Val extends Certificate>
    implements $CertificateCopyWith<$Res> {
  _$CertificateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? issueDate = null,
    Object? expiryDate = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificateImplCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory _$$CertificateImplCopyWith(
          _$CertificateImpl value, $Res Function(_$CertificateImpl) then) =
      __$$CertificateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, DateTime issueDate, DateTime expiryDate});
}

/// @nodoc
class __$$CertificateImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$CertificateImpl>
    implements _$$CertificateImplCopyWith<$Res> {
  __$$CertificateImplCopyWithImpl(
      _$CertificateImpl _value, $Res Function(_$CertificateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? issueDate = null,
    Object? expiryDate = null,
  }) {
    return _then(_$CertificateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificateImpl implements _Certificate {
  const _$CertificateImpl(
      {required this.name, required this.issueDate, required this.expiryDate});

  factory _$CertificateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificateImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime issueDate;
  @override
  final DateTime expiryDate;

  @override
  String toString() {
    return 'Certificate(name: $name, issueDate: $issueDate, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, issueDate, expiryDate);

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateImplCopyWith<_$CertificateImpl> get copyWith =>
      __$$CertificateImplCopyWithImpl<_$CertificateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificateImplToJson(
      this,
    );
  }
}

abstract class _Certificate implements Certificate {
  const factory _Certificate(
      {required final String name,
      required final DateTime issueDate,
      required final DateTime expiryDate}) = _$CertificateImpl;

  factory _Certificate.fromJson(Map<String, dynamic> json) =
      _$CertificateImpl.fromJson;

  @override
  String get name;
  @override
  DateTime get issueDate;
  @override
  DateTime get expiryDate;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificateImplCopyWith<_$CertificateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleInfo _$VehicleInfoFromJson(Map<String, dynamic> json) {
  return _VehicleInfo.fromJson(json);
}

/// @nodoc
mixin _$VehicleInfo {
  String get id => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get plateNumber => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;

  /// Serializes this VehicleInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VehicleInfoCopyWith<VehicleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleInfoCopyWith<$Res> {
  factory $VehicleInfoCopyWith(
          VehicleInfo value, $Res Function(VehicleInfo) then) =
      _$VehicleInfoCopyWithImpl<$Res, VehicleInfo>;
  @useResult
  $Res call(
      {String id, String model, String plateNumber, String type, int year});
}

/// @nodoc
class _$VehicleInfoCopyWithImpl<$Res, $Val extends VehicleInfo>
    implements $VehicleInfoCopyWith<$Res> {
  _$VehicleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? model = null,
    Object? plateNumber = null,
    Object? type = null,
    Object? year = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleInfoImplCopyWith<$Res>
    implements $VehicleInfoCopyWith<$Res> {
  factory _$$VehicleInfoImplCopyWith(
          _$VehicleInfoImpl value, $Res Function(_$VehicleInfoImpl) then) =
      __$$VehicleInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String model, String plateNumber, String type, int year});
}

/// @nodoc
class __$$VehicleInfoImplCopyWithImpl<$Res>
    extends _$VehicleInfoCopyWithImpl<$Res, _$VehicleInfoImpl>
    implements _$$VehicleInfoImplCopyWith<$Res> {
  __$$VehicleInfoImplCopyWithImpl(
      _$VehicleInfoImpl _value, $Res Function(_$VehicleInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? model = null,
    Object? plateNumber = null,
    Object? type = null,
    Object? year = null,
  }) {
    return _then(_$VehicleInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleInfoImpl implements _VehicleInfo {
  const _$VehicleInfoImpl(
      {required this.id,
      required this.model,
      required this.plateNumber,
      required this.type,
      required this.year});

  factory _$VehicleInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String model;
  @override
  final String plateNumber;
  @override
  final String type;
  @override
  final int year;

  @override
  String toString() {
    return 'VehicleInfo(id: $id, model: $model, plateNumber: $plateNumber, type: $type, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, model, plateNumber, type, year);

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleInfoImplCopyWith<_$VehicleInfoImpl> get copyWith =>
      __$$VehicleInfoImplCopyWithImpl<_$VehicleInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleInfoImplToJson(
      this,
    );
  }
}

abstract class _VehicleInfo implements VehicleInfo {
  const factory _VehicleInfo(
      {required final String id,
      required final String model,
      required final String plateNumber,
      required final String type,
      required final int year}) = _$VehicleInfoImpl;

  factory _VehicleInfo.fromJson(Map<String, dynamic> json) =
      _$VehicleInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get model;
  @override
  String get plateNumber;
  @override
  String get type;
  @override
  int get year;

  /// Create a copy of VehicleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VehicleInfoImplCopyWith<_$VehicleInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverStats _$DriverStatsFromJson(Map<String, dynamic> json) {
  return _DriverStats.fromJson(json);
}

/// @nodoc
mixin _$DriverStats {
  int get totalTrips => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get completedTrips => throw _privateConstructorUsedError;
  int get cancelledTrips => throw _privateConstructorUsedError;

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
      {int totalTrips, double rating, int completedTrips, int cancelledTrips});
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
    Object? totalTrips = null,
    Object? rating = null,
    Object? completedTrips = null,
    Object? cancelledTrips = null,
  }) {
    return _then(_value.copyWith(
      totalTrips: null == totalTrips
          ? _value.totalTrips
          : totalTrips // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      completedTrips: null == completedTrips
          ? _value.completedTrips
          : completedTrips // ignore: cast_nullable_to_non_nullable
              as int,
      cancelledTrips: null == cancelledTrips
          ? _value.cancelledTrips
          : cancelledTrips // ignore: cast_nullable_to_non_nullable
              as int,
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
      {int totalTrips, double rating, int completedTrips, int cancelledTrips});
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
    Object? totalTrips = null,
    Object? rating = null,
    Object? completedTrips = null,
    Object? cancelledTrips = null,
  }) {
    return _then(_$DriverStatsImpl(
      totalTrips: null == totalTrips
          ? _value.totalTrips
          : totalTrips // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      completedTrips: null == completedTrips
          ? _value.completedTrips
          : completedTrips // ignore: cast_nullable_to_non_nullable
              as int,
      cancelledTrips: null == cancelledTrips
          ? _value.cancelledTrips
          : cancelledTrips // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverStatsImpl implements _DriverStats {
  const _$DriverStatsImpl(
      {required this.totalTrips,
      required this.rating,
      required this.completedTrips,
      required this.cancelledTrips});

  factory _$DriverStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverStatsImplFromJson(json);

  @override
  final int totalTrips;
  @override
  final double rating;
  @override
  final int completedTrips;
  @override
  final int cancelledTrips;

  @override
  String toString() {
    return 'DriverStats(totalTrips: $totalTrips, rating: $rating, completedTrips: $completedTrips, cancelledTrips: $cancelledTrips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverStatsImpl &&
            (identical(other.totalTrips, totalTrips) ||
                other.totalTrips == totalTrips) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.completedTrips, completedTrips) ||
                other.completedTrips == completedTrips) &&
            (identical(other.cancelledTrips, cancelledTrips) ||
                other.cancelledTrips == cancelledTrips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalTrips, rating, completedTrips, cancelledTrips);

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
      {required final int totalTrips,
      required final double rating,
      required final int completedTrips,
      required final int cancelledTrips}) = _$DriverStatsImpl;

  factory _DriverStats.fromJson(Map<String, dynamic> json) =
      _$DriverStatsImpl.fromJson;

  @override
  int get totalTrips;
  @override
  double get rating;
  @override
  int get completedTrips;
  @override
  int get cancelledTrips;

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverStatsImplCopyWith<_$DriverStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
