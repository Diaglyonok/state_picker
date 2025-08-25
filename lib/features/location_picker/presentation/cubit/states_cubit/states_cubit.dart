import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:state_picker_temp/features/location_picker/domain/usecases/get_cached_states.dart';

import 'package:state_picker_temp/features/location_picker/domain/usecases/get_states.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/states_cubit/states_cubit_state.dart';
import 'package:state_picker_temp/injection/injection.dart';

@injectable
class StatesCubit extends Cubit<StatesCubitState> {
  final GetStates _getStates;

  StatesCubit(@factoryParam String countryId, this._getStates, GetCachedStates _getCachedStates)
    : super(_initState(_getCachedStates, countryId)) {
    if (state.isLoading) {
      _loadStates(countryId);
    }
  }

  static StatesCubit create(String countryId) {
    return getIt<StatesCubit>(param1: countryId);
  }

  static _initState(GetCachedStates getCachedStates, String countryId) {
    final states = getCachedStates(countryId);
    return StatesCubitState(states: states, isLoading: states == null);
  }

  void _loadStates(String countryId) async {
    final result = await _getStates(countryId);
    result.fold(
      (failure) => emit(state.copyWith(hasError: true)),
      (states) => emit(state.copyWith(states: states, isLoading: false, hasError: false)),
    );
  }
}
