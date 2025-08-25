import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'states_cubit_state.freezed.dart';

@freezed
class StatesCubitState with _$StatesCubitState {
  const factory StatesCubitState({
    List<StateEntity>? states,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _StatesCubitState;
}
