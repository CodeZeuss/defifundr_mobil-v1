// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donors_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonorsEntity _$DonorsEntityFromJson(Map<String, dynamic> json) {
  return _DonorsEntity.fromJson(json);
}

/// @nodoc
mixin _$DonorsEntity {
  List<Donors>? get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;

  /// Serializes this DonorsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DonorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonorsEntityCopyWith<DonorsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorsEntityCopyWith<$Res> {
  factory $DonorsEntityCopyWith(
          DonorsEntity value, $Res Function(DonorsEntity) then) =
      _$DonorsEntityCopyWithImpl<$Res, DonorsEntity>;
  @useResult
  $Res call({List<Donors>? data, dynamic message, dynamic status});
}

/// @nodoc
class _$DonorsEntityCopyWithImpl<$Res, $Val extends DonorsEntity>
    implements $DonorsEntityCopyWith<$Res> {
  _$DonorsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DonorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Donors>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonorsEntityImplCopyWith<$Res>
    implements $DonorsEntityCopyWith<$Res> {
  factory _$$DonorsEntityImplCopyWith(
          _$DonorsEntityImpl value, $Res Function(_$DonorsEntityImpl) then) =
      __$$DonorsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Donors>? data, dynamic message, dynamic status});
}

/// @nodoc
class __$$DonorsEntityImplCopyWithImpl<$Res>
    extends _$DonorsEntityCopyWithImpl<$Res, _$DonorsEntityImpl>
    implements _$$DonorsEntityImplCopyWith<$Res> {
  __$$DonorsEntityImplCopyWithImpl(
      _$DonorsEntityImpl _value, $Res Function(_$DonorsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DonorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DonorsEntityImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Donors>?,
      message: freezed == message ? _value.message! : message,
      status: freezed == status ? _value.status! : status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonorsEntityImpl implements _DonorsEntity {
  const _$DonorsEntityImpl(
      {final List<Donors>? data, this.message = '', this.status = 0})
      : _data = data;

  factory _$DonorsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonorsEntityImplFromJson(json);

  final List<Donors>? _data;
  @override
  List<Donors>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic message;
  @override
  @JsonKey()
  final dynamic status;

  @override
  String toString() {
    return 'DonorsEntity(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonorsEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  /// Create a copy of DonorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonorsEntityImplCopyWith<_$DonorsEntityImpl> get copyWith =>
      __$$DonorsEntityImplCopyWithImpl<_$DonorsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonorsEntityImplToJson(
      this,
    );
  }
}

abstract class _DonorsEntity implements DonorsEntity {
  const factory _DonorsEntity(
      {final List<Donors>? data,
      final dynamic message,
      final dynamic status}) = _$DonorsEntityImpl;

  factory _DonorsEntity.fromJson(Map<String, dynamic> json) =
      _$DonorsEntityImpl.fromJson;

  @override
  List<Donors>? get data;
  @override
  dynamic get message;
  @override
  dynamic get status;

  /// Create a copy of DonorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonorsEntityImplCopyWith<_$DonorsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Donors _$DonorsFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Donors {
  dynamic get amount => throw _privateConstructorUsedError;
  dynamic get donor => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  dynamic get username => throw _privateConstructorUsedError;

  /// Serializes this Donors to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Donors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonorsCopyWith<Donors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorsCopyWith<$Res> {
  factory $DonorsCopyWith(Donors value, $Res Function(Donors) then) =
      _$DonorsCopyWithImpl<$Res, Donors>;
  @useResult
  $Res call({dynamic amount, dynamic donor, dynamic image, dynamic username});
}

/// @nodoc
class _$DonorsCopyWithImpl<$Res, $Val extends Donors>
    implements $DonorsCopyWith<$Res> {
  _$DonorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Donors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? donor = freezed,
    Object? image = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      donor: freezed == donor
          ? _value.donor
          : donor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DonorsCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic amount, dynamic donor, dynamic image, dynamic username});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DonorsCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Donors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? donor = freezed,
    Object? image = freezed,
    Object? username = freezed,
  }) {
    return _then(_$DatumImpl(
      amount: freezed == amount ? _value.amount! : amount,
      donor: freezed == donor ? _value.donor! : donor,
      image: freezed == image ? _value.image! : image,
      username: freezed == username ? _value.username! : username,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.amount = 0.0,
      this.donor = '',
      this.image = '',
      this.username = ''});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey()
  final dynamic amount;
  @override
  @JsonKey()
  final dynamic donor;
  @override
  @JsonKey()
  final dynamic image;
  @override
  @JsonKey()
  final dynamic username;

  @override
  String toString() {
    return 'Donors(amount: $amount, donor: $donor, image: $image, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.donor, donor) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(donor),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(username));

  /// Create a copy of Donors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Donors {
  const factory _Datum(
      {final dynamic amount,
      final dynamic donor,
      final dynamic image,
      final dynamic username}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  dynamic get amount;
  @override
  dynamic get donor;
  @override
  dynamic get image;
  @override
  dynamic get username;

  /// Create a copy of Donors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
