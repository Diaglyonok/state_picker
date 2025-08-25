// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CountriesCubitState {
  List<CountryEntity>? get countries => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  /// Create a copy of CountriesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountriesCubitStateCopyWith<CountriesCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesCubitStateCopyWith<$Res> {
  factory $CountriesCubitStateCopyWith(
    CountriesCubitState value,
    $Res Function(CountriesCubitState) then,
  ) = _$CountriesCubitStateCopyWithImpl<$Res, CountriesCubitState>;
  @useResult
  $Res call({List<CountryEntity>? countries, bool isLoading, bool hasError});
}

/// @nodoc
class _$CountriesCubitStateCopyWithImpl<$Res, $Val extends CountriesCubitState>
    implements $CountriesCubitStateCopyWith<$Res> {
  _$CountriesCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountriesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(
      _value.copyWith(
            countries: freezed == countries
                ? _value.countries
                : countries // ignore: cast_nullable_to_non_nullable
                      as List<CountryEntity>?,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasError: null == hasError
                ? _value.hasError
                : hasError // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountriesCubitStateImplCopyWith<$Res>
    implements $CountriesCubitStateCopyWith<$Res> {
  factory _$$CountriesCubitStateImplCopyWith(
    _$CountriesCubitStateImpl value,
    $Res Function(_$CountriesCubitStateImpl) then,
  ) = __$$CountriesCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountryEntity>? countries, bool isLoading, bool hasError});
}

/// @nodoc
class __$$CountriesCubitStateImplCopyWithImpl<$Res>
    extends _$CountriesCubitStateCopyWithImpl<$Res, _$CountriesCubitStateImpl>
    implements _$$CountriesCubitStateImplCopyWith<$Res> {
  __$$CountriesCubitStateImplCopyWithImpl(
    _$CountriesCubitStateImpl _value,
    $Res Function(_$CountriesCubitStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountriesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(
      _$CountriesCubitStateImpl(
        countries: freezed == countries
            ? _value._countries
            : countries // ignore: cast_nullable_to_non_nullable
                  as List<CountryEntity>?,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasError: null == hasError
            ? _value.hasError
            : hasError // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$CountriesCubitStateImpl implements _CountriesCubitState {
  const _$CountriesCubitStateImpl({
    final List<CountryEntity>? countries,
    this.isLoading = false,
    this.hasError = false,
  }) : _countries = countries;

  final List<CountryEntity>? _countries;
  @override
  List<CountryEntity>? get countries {
    final value = _countries;
    if (value == null) return null;
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;

  @override
  String toString() {
    return 'CountriesCubitState(countries: $countries, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesCubitStateImpl &&
            const DeepCollectionEquality().equals(
              other._countries,
              _countries,
            ) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_countries),
    isLoading,
    hasError,
  );

  /// Create a copy of CountriesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesCubitStateImplCopyWith<_$CountriesCubitStateImpl> get copyWith =>
      __$$CountriesCubitStateImplCopyWithImpl<_$CountriesCubitStateImpl>(
        this,
        _$identity,
      );
}

abstract class _CountriesCubitState implements CountriesCubitState {
  const factory _CountriesCubitState({
    final List<CountryEntity>? countries,
    final bool isLoading,
    final bool hasError,
  }) = _$CountriesCubitStateImpl;

  @override
  List<CountryEntity>? get countries;
  @override
  bool get isLoading;
  @override
  bool get hasError;

  /// Create a copy of CountriesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountriesCubitStateImplCopyWith<_$CountriesCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
