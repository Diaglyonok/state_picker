// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StatesCubitState {
  List<StateEntity>? get states => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  /// Create a copy of StatesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatesCubitStateCopyWith<StatesCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatesCubitStateCopyWith<$Res> {
  factory $StatesCubitStateCopyWith(
    StatesCubitState value,
    $Res Function(StatesCubitState) then,
  ) = _$StatesCubitStateCopyWithImpl<$Res, StatesCubitState>;
  @useResult
  $Res call({List<StateEntity>? states, bool isLoading, bool hasError});
}

/// @nodoc
class _$StatesCubitStateCopyWithImpl<$Res, $Val extends StatesCubitState>
    implements $StatesCubitStateCopyWith<$Res> {
  _$StatesCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? states = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(
      _value.copyWith(
            states: freezed == states
                ? _value.states
                : states // ignore: cast_nullable_to_non_nullable
                      as List<StateEntity>?,
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
abstract class _$$StatesCubitStateImplCopyWith<$Res>
    implements $StatesCubitStateCopyWith<$Res> {
  factory _$$StatesCubitStateImplCopyWith(
    _$StatesCubitStateImpl value,
    $Res Function(_$StatesCubitStateImpl) then,
  ) = __$$StatesCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StateEntity>? states, bool isLoading, bool hasError});
}

/// @nodoc
class __$$StatesCubitStateImplCopyWithImpl<$Res>
    extends _$StatesCubitStateCopyWithImpl<$Res, _$StatesCubitStateImpl>
    implements _$$StatesCubitStateImplCopyWith<$Res> {
  __$$StatesCubitStateImplCopyWithImpl(
    _$StatesCubitStateImpl _value,
    $Res Function(_$StatesCubitStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? states = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(
      _$StatesCubitStateImpl(
        states: freezed == states
            ? _value._states
            : states // ignore: cast_nullable_to_non_nullable
                  as List<StateEntity>?,
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

class _$StatesCubitStateImpl implements _StatesCubitState {
  const _$StatesCubitStateImpl({
    final List<StateEntity>? states,
    this.isLoading = false,
    this.hasError = false,
  }) : _states = states;

  final List<StateEntity>? _states;
  @override
  List<StateEntity>? get states {
    final value = _states;
    if (value == null) return null;
    if (_states is EqualUnmodifiableListView) return _states;
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
    return 'StatesCubitState(states: $states, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatesCubitStateImpl &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_states),
    isLoading,
    hasError,
  );

  /// Create a copy of StatesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatesCubitStateImplCopyWith<_$StatesCubitStateImpl> get copyWith =>
      __$$StatesCubitStateImplCopyWithImpl<_$StatesCubitStateImpl>(
        this,
        _$identity,
      );
}

abstract class _StatesCubitState implements StatesCubitState {
  const factory _StatesCubitState({
    final List<StateEntity>? states,
    final bool isLoading,
    final bool hasError,
  }) = _$StatesCubitStateImpl;

  @override
  List<StateEntity>? get states;
  @override
  bool get isLoading;
  @override
  bool get hasError;

  /// Create a copy of StatesCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatesCubitStateImplCopyWith<_$StatesCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
