import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_cubit_state.freezed.dart';

@freezed
class CountriesCubitState with _$CountriesCubitState {
  const factory CountriesCubitState({
    List<CountryEntity>? countries,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _CountriesCubitState;
}
