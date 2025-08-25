import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:state_picker_temp/features/location_picker/domain/usecases/get_cached_countries.dart';

import 'package:state_picker_temp/features/location_picker/domain/usecases/get_countries.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/countries_cubit/countries_cubit_state.dart';

@injectable
class CountriesCubit extends Cubit<CountriesCubitState> {
  final GetCountries _getCountries;

  CountriesCubit(this._getCountries, GetCachedCountries _getCachedCountries)
    : super(_initState(_getCachedCountries)) {
    if (state.isLoading) {
      _loadCountries();
    }
  }

  static _initState(GetCachedCountries getCachedCountries) {
    final countries = getCachedCountries();
    return CountriesCubitState(countries: countries, isLoading: countries == null);
  }

  void _loadCountries() async {
    final result = await _getCountries();
    result.fold(
      (failure) => emit(state.copyWith(hasError: true)),
      (countries) => emit(state.copyWith(countries: countries, isLoading: false, hasError: false)),
    );
  }
}
