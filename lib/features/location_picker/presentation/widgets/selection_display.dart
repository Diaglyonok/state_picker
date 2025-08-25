import 'package:flutter/material.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';

class SelectionDisplay extends StatelessWidget {
  final CountryEntity? selectedCountry;
  final StateEntity? selectedState;
  final Function() onClearSelection;

  const SelectionDisplay({
    super.key,
    required this.selectedCountry,
    required this.selectedState,
    required this.onClearSelection,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Current Selection',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            if (selectedCountry != null) ...[
              Row(
                children: [
                  const Text('Country: ', style: TextStyle(fontWeight: FontWeight.w600)),
                  Text(selectedCountry!.value),
                ],
              ),
              const SizedBox(height: 8),
            ],
            if (selectedState != null) ...[
              Row(
                children: [
                  const Text('State: ', style: TextStyle(fontWeight: FontWeight.w600)),
                  Text(selectedState!.value),
                ],
              ),
            ],
            if (selectedCountry != null) ...[
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  onClearSelection();
                },
                child: const Text('Clear Selection'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
