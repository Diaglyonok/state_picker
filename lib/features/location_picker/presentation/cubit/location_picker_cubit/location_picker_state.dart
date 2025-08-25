import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';

part 'location_picker_state.freezed.dart';

@freezed
class LocationPickerState with _$LocationPickerState {
  const factory LocationPickerState({CountryEntity? selectedCountry, StateEntity? selectedState}) =
      _LocationPickerState;
}
