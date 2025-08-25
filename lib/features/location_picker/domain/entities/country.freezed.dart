// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CountryEntity {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryEntityCopyWith<CountryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEntityCopyWith<$Res> {
  factory $CountryEntityCopyWith(
    CountryEntity value,
    $Res Function(CountryEntity) then,
  ) = _$CountryEntityCopyWithImpl<$Res, CountryEntity>;
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class _$CountryEntityCopyWithImpl<$Res, $Val extends CountryEntity>
    implements $CountryEntityCopyWith<$Res> {
  _$CountryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountryEntityImplCopyWith<$Res>
    implements $CountryEntityCopyWith<$Res> {
  factory _$$CountryEntityImplCopyWith(
    _$CountryEntityImpl value,
    $Res Function(_$CountryEntityImpl) then,
  ) = __$$CountryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class __$$CountryEntityImplCopyWithImpl<$Res>
    extends _$CountryEntityCopyWithImpl<$Res, _$CountryEntityImpl>
    implements _$$CountryEntityImplCopyWith<$Res> {
  __$$CountryEntityImplCopyWithImpl(
    _$CountryEntityImpl _value,
    $Res Function(_$CountryEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? value = null}) {
    return _then(
      _$CountryEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CountryEntityImpl implements _CountryEntity {
  const _$CountryEntityImpl({required this.id, required this.value});

  @override
  final String id;
  @override
  final String value;

  @override
  String toString() {
    return 'CountryEntity(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryEntityImplCopyWith<_$CountryEntityImpl> get copyWith =>
      __$$CountryEntityImplCopyWithImpl<_$CountryEntityImpl>(this, _$identity);
}

abstract class _CountryEntity implements CountryEntity {
  const factory _CountryEntity({
    required final String id,
    required final String value,
  }) = _$CountryEntityImpl;

  @override
  String get id;
  @override
  String get value;

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryEntityImplCopyWith<_$CountryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
