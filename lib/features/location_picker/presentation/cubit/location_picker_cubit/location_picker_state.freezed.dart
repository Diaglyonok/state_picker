// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocationPickerState {
  CountryEntity? get selectedCountry => throw _privateConstructorUsedError;
  StateEntity? get selectedState => throw _privateConstructorUsedError;

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationPickerStateCopyWith<LocationPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPickerStateCopyWith<$Res> {
  factory $LocationPickerStateCopyWith(
    LocationPickerState value,
    $Res Function(LocationPickerState) then,
  ) = _$LocationPickerStateCopyWithImpl<$Res, LocationPickerState>;
  @useResult
  $Res call({CountryEntity? selectedCountry, StateEntity? selectedState});

  $CountryEntityCopyWith<$Res>? get selectedCountry;
  $StateEntityCopyWith<$Res>? get selectedState;
}

/// @nodoc
class _$LocationPickerStateCopyWithImpl<$Res, $Val extends LocationPickerState>
    implements $LocationPickerStateCopyWith<$Res> {
  _$LocationPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCountry = freezed,
    Object? selectedState = freezed,
  }) {
    return _then(
      _value.copyWith(
            selectedCountry: freezed == selectedCountry
                ? _value.selectedCountry
                : selectedCountry // ignore: cast_nullable_to_non_nullable
                      as CountryEntity?,
            selectedState: freezed == selectedState
                ? _value.selectedState
                : selectedState // ignore: cast_nullable_to_non_nullable
                      as StateEntity?,
          )
          as $Val,
    );
  }

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryEntityCopyWith<$Res>? get selectedCountry {
    if (_value.selectedCountry == null) {
      return null;
    }

    return $CountryEntityCopyWith<$Res>(_value.selectedCountry!, (value) {
      return _then(_value.copyWith(selectedCountry: value) as $Val);
    });
  }

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StateEntityCopyWith<$Res>? get selectedState {
    if (_value.selectedState == null) {
      return null;
    }

    return $StateEntityCopyWith<$Res>(_value.selectedState!, (value) {
      return _then(_value.copyWith(selectedState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationPickerStateImplCopyWith<$Res>
    implements $LocationPickerStateCopyWith<$Res> {
  factory _$$LocationPickerStateImplCopyWith(
    _$LocationPickerStateImpl value,
    $Res Function(_$LocationPickerStateImpl) then,
  ) = __$$LocationPickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CountryEntity? selectedCountry, StateEntity? selectedState});

  @override
  $CountryEntityCopyWith<$Res>? get selectedCountry;
  @override
  $StateEntityCopyWith<$Res>? get selectedState;
}

/// @nodoc
class __$$LocationPickerStateImplCopyWithImpl<$Res>
    extends _$LocationPickerStateCopyWithImpl<$Res, _$LocationPickerStateImpl>
    implements _$$LocationPickerStateImplCopyWith<$Res> {
  __$$LocationPickerStateImplCopyWithImpl(
    _$LocationPickerStateImpl _value,
    $Res Function(_$LocationPickerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCountry = freezed,
    Object? selectedState = freezed,
  }) {
    return _then(
      _$LocationPickerStateImpl(
        selectedCountry: freezed == selectedCountry
            ? _value.selectedCountry
            : selectedCountry // ignore: cast_nullable_to_non_nullable
                  as CountryEntity?,
        selectedState: freezed == selectedState
            ? _value.selectedState
            : selectedState // ignore: cast_nullable_to_non_nullable
                  as StateEntity?,
      ),
    );
  }
}

/// @nodoc

class _$LocationPickerStateImpl implements _LocationPickerState {
  const _$LocationPickerStateImpl({this.selectedCountry, this.selectedState});

  @override
  final CountryEntity? selectedCountry;
  @override
  final StateEntity? selectedState;

  @override
  String toString() {
    return 'LocationPickerState(selectedCountry: $selectedCountry, selectedState: $selectedState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPickerStateImpl &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.selectedState, selectedState) ||
                other.selectedState == selectedState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCountry, selectedState);

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPickerStateImplCopyWith<_$LocationPickerStateImpl> get copyWith =>
      __$$LocationPickerStateImplCopyWithImpl<_$LocationPickerStateImpl>(
        this,
        _$identity,
      );
}

abstract class _LocationPickerState implements LocationPickerState {
  const factory _LocationPickerState({
    final CountryEntity? selectedCountry,
    final StateEntity? selectedState,
  }) = _$LocationPickerStateImpl;

  @override
  CountryEntity? get selectedCountry;
  @override
  StateEntity? get selectedState;

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationPickerStateImplCopyWith<_$LocationPickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
