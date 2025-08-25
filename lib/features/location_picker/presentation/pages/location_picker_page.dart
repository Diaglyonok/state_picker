import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_picker_temp/core/utils/extensions.dart';

import 'package:state_picker_temp/features/location_picker/presentation/cubit/location_picker_cubit/location_picker_cubit.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/location_picker_cubit/location_picker_state.dart';

import 'package:state_picker_temp/features/location_picker/presentation/pages/location_country_bottom_sheet.dart';
import 'package:state_picker_temp/features/location_picker/presentation/pages/location_state_bottom_sheet.dart';
import 'package:state_picker_temp/features/location_picker/presentation/widgets/location_selector.dart';
import 'package:state_picker_temp/features/location_picker/presentation/widgets/selection_display.dart';
import 'package:state_picker_temp/injection/injection.dart';
import 'package:state_picker_temp/shared/widgets/adaptive_bottom_sheet.dart';

class LocationPickerPage extends StatelessWidget {
  const LocationPickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country & State Picker'),
        backgroundColor: context.colorScheme.inversePrimary,
      ),
      body: const Padding(padding: EdgeInsets.all(16), child: LocationPickerView()),
    );
  }
}

class LocationPickerView extends StatelessWidget {
  const LocationPickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LocationPickerCubit>(),
      child: BlocBuilder<LocationPickerCubit, LocationPickerState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),

                // Country Selection
                const Text(
                  'Select Country',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),

                LocationSelector(
                  selectedValue: state.selectedCountry?.value,
                  hintText: 'Choose a country',
                  onTap: () =>
                      _showCountryBottomSheet(context, context.read<LocationPickerCubit>()),
                ),

                const SizedBox(height: 24),

                // State Selection
                const Text(
                  'Select State',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),

                LocationSelector(
                  selectedValue: state.selectedState?.value,
                  hintText: state.selectedCountry != null
                      ? 'Choose a state'
                      : 'Select a country first',
                  isEnabled: state.selectedCountry != null,
                  onTap: state.selectedCountry != null
                      ? () => _showStateBottomSheet(context, context.read<LocationPickerCubit>())
                      : null,
                ),

                const SizedBox(height: 32),

                // Selection Display
                if (state.selectedCountry != null || state.selectedState != null)
                  SelectionDisplay(
                    selectedCountry: state.selectedCountry,
                    selectedState: state.selectedState,
                    onClearSelection: () => context.read<LocationPickerCubit>().clearSelection(),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showCountryBottomSheet(BuildContext context, LocationPickerCubit cubit) {
    AdaptiveBottomSheet.show(
      context: context,
      builder: (context) => LocationCountryBottomSheet(cubit: cubit),
    );
  }

  void _showStateBottomSheet(BuildContext context, LocationPickerCubit cubit) {
    AdaptiveBottomSheet.show(
      context: context,
      builder: (context) => LocationStateBottomSheet(cubit: cubit),
    );
  }
}
