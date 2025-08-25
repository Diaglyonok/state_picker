// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StateEntity {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get countryId => throw _privateConstructorUsedError;

  /// Create a copy of StateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StateEntityCopyWith<StateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateEntityCopyWith<$Res> {
  factory $StateEntityCopyWith(
    StateEntity value,
    $Res Function(StateEntity) then,
  ) = _$StateEntityCopyWithImpl<$Res, StateEntity>;
  @useResult
  $Res call({String id, String value, String countryId});
}

/// @nodoc
class _$StateEntityCopyWithImpl<$Res, $Val extends StateEntity>
    implements $StateEntityCopyWith<$Res> {
  _$StateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? countryId = null,
  }) {
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
            countryId: null == countryId
                ? _value.countryId
                : countryId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StateEntityImplCopyWith<$Res>
    implements $StateEntityCopyWith<$Res> {
  factory _$$StateEntityImplCopyWith(
    _$StateEntityImpl value,
    $Res Function(_$StateEntityImpl) then,
  ) = __$$StateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value, String countryId});
}

/// @nodoc
class __$$StateEntityImplCopyWithImpl<$Res>
    extends _$StateEntityCopyWithImpl<$Res, _$StateEntityImpl>
    implements _$$StateEntityImplCopyWith<$Res> {
  __$$StateEntityImplCopyWithImpl(
    _$StateEntityImpl _value,
    $Res Function(_$StateEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? countryId = null,
  }) {
    return _then(
      _$StateEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        countryId: null == countryId
            ? _value.countryId
            : countryId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$StateEntityImpl implements _StateEntity {
  const _$StateEntityImpl({
    required this.id,
    required this.value,
    required this.countryId,
  });

  @override
  final String id;
  @override
  final String value;
  @override
  final String countryId;

  @override
  String toString() {
    return 'StateEntity(id: $id, value: $value, countryId: $countryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value, countryId);

  /// Create a copy of StateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateEntityImplCopyWith<_$StateEntityImpl> get copyWith =>
      __$$StateEntityImplCopyWithImpl<_$StateEntityImpl>(this, _$identity);
}

abstract class _StateEntity implements StateEntity {
  const factory _StateEntity({
    required final String id,
    required final String value,
    required final String countryId,
  }) = _$StateEntityImpl;

  @override
  String get id;
  @override
  String get value;
  @override
  String get countryId;

  /// Create a copy of StateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateEntityImplCopyWith<_$StateEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
