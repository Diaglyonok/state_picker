import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/location_picker_cubit/location_picker_cubit.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/location_picker_cubit/location_picker_state.dart';

void main() {
  late LocationPickerCubit cubit;

  setUp(() {
    cubit = LocationPickerCubit();
  });

  tearDown(() {
    cubit.close();
  });

  const testCountry = CountryEntity(id: '1', value: 'Sudan');
  const testState = StateEntity(id: '10', value: 'Nevada', countryId: '1');

  test('initial state is correct', () {
    expect(cubit.state, const LocationPickerState());
  });

  group('selectCountry', () {
    blocTest<LocationPickerCubit, LocationPickerState>(
      'emits state with selected country and clears selected state',
      build: () => cubit,
      act: (cubit) => cubit.selectCountry(testCountry),
      expect: () => [const LocationPickerState(selectedCountry: testCountry, selectedState: null)],
    );

    blocTest<LocationPickerCubit, LocationPickerState>(
      'clears selected state when selecting new country',
      build: () => cubit,
      seed: () => const LocationPickerState(
        selectedCountry: CountryEntity(id: '2', value: 'Eswatini'),
        selectedState: testState,
      ),
      act: (cubit) => cubit.selectCountry(testCountry),
      expect: () => [const LocationPickerState(selectedCountry: testCountry, selectedState: null)],
    );
  });

  group('selectState', () {
    blocTest<LocationPickerCubit, LocationPickerState>(
      'emits state with selected state',
      build: () => cubit,
      act: (cubit) => cubit.selectState(testState),
      expect: () => [const LocationPickerState(selectedState: testState)],
    );

    blocTest<LocationPickerCubit, LocationPickerState>(
      'updates selected state while keeping selected country',
      build: () => cubit,
      seed: () => const LocationPickerState(selectedCountry: testCountry),
      act: (cubit) => cubit.selectState(testState),
      expect: () => [
        const LocationPickerState(selectedCountry: testCountry, selectedState: testState),
      ],
    );
  });

  group('clearSelection', () {
    blocTest<LocationPickerCubit, LocationPickerState>(
      'emits initial state when clearing selection',
      build: () => cubit,
      seed: () => const LocationPickerState(selectedCountry: testCountry, selectedState: testState),
      act: (cubit) => cubit.clearSelection(),
      expect: () => [const LocationPickerState()],
    );
  });
}
