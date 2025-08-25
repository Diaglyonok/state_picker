import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';
import 'location_picker_state.dart';

@injectable
class LocationPickerCubit extends Cubit<LocationPickerState> {
  LocationPickerCubit() : super(const LocationPickerState());

  void selectCountry(CountryEntity country) async {
    emit(state.copyWith(selectedCountry: country, selectedState: null));
  }

  void selectState(StateEntity state) {
    emit(this.state.copyWith(selectedState: state));
  }

  void clearSelection() {
    emit(const LocationPickerState());
  }
}
