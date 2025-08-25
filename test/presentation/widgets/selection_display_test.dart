import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';
import 'package:state_picker_temp/features/location_picker/presentation/widgets/selection_display.dart';

void main() {
  const testCountry = CountryEntity(id: '1', value: 'United States');
  const testState = StateEntity(id: '10', value: 'California', countryId: '1');

  Widget createTestWidget({
    CountryEntity? selectedCountry,
    StateEntity? selectedState,
    VoidCallback? onClearSelection,
  }) {
    return MaterialApp(
      home: Scaffold(
        body: SelectionDisplay(
          selectedCountry: selectedCountry,
          selectedState: selectedState,
          onClearSelection: onClearSelection ?? () {},
        ),
      ),
    );
  }

  group('SelectionDisplay', () {
    testWidgets('displays title correctly', (tester) async {
      await tester.pumpWidget(createTestWidget());

      expect(find.text('Current Selection'), findsOneWidget);
      expect(find.byType(Card), findsOneWidget);
    });

    testWidgets('displays only selected country when no state selected', (tester) async {
      await tester.pumpWidget(createTestWidget(selectedCountry: testCountry));

      expect(find.text('Country: '), findsOneWidget);
      expect(find.text('United States'), findsOneWidget);
      expect(find.text('State: '), findsNothing);
      expect(find.text('Clear Selection'), findsOneWidget);
    });

    testWidgets('displays both country and state when both selected', (tester) async {
      await tester.pumpWidget(
        createTestWidget(selectedCountry: testCountry, selectedState: testState),
      );

      expect(find.text('Country: '), findsOneWidget);
      expect(find.text('United States'), findsOneWidget);
      expect(find.text('State: '), findsOneWidget);
      expect(find.text('California'), findsOneWidget);
      expect(find.text('Clear Selection'), findsOneWidget);
    });

    testWidgets('displays only state when only state selected', (tester) async {
      await tester.pumpWidget(createTestWidget(selectedState: testState));

      expect(find.text('Country: '), findsNothing);
      expect(find.text('State: '), findsOneWidget);
      expect(find.text('California'), findsOneWidget);
      expect(find.text('Clear Selection'), findsNothing);
    });

    testWidgets('does not display clear button when no country selected', (tester) async {
      await tester.pumpWidget(createTestWidget(selectedState: testState));

      expect(find.text('Clear Selection'), findsNothing);
      expect(find.byType(ElevatedButton), findsNothing);
    });

    testWidgets('calls onClearSelection when clear button is pressed', (tester) async {
      bool wasCalled = false;
      await tester.pumpWidget(
        createTestWidget(selectedCountry: testCountry, onClearSelection: () => wasCalled = true),
      );

      await tester.tap(find.text('Clear Selection'));
      await tester.pump();

      expect(wasCalled, isTrue);
    });

    testWidgets('shows clear button only when country is selected', (tester) async {
      await tester.pumpWidget(
        createTestWidget(selectedCountry: testCountry, selectedState: testState),
      );

      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.text('Clear Selection'), findsOneWidget);
    });

    testWidgets('has proper layout structure', (tester) async {
      await tester.pumpWidget(
        createTestWidget(selectedCountry: testCountry, selectedState: testState),
      );

      expect(find.byType(Card), findsOneWidget);
      expect(find.byType(Padding), findsAtLeastNWidgets(1));
      expect(find.byType(Column), findsOneWidget);
    });

    testWidgets('displays country and state labels with bold font weight', (tester) async {
      await tester.pumpWidget(
        createTestWidget(selectedCountry: testCountry, selectedState: testState),
      );

      final countryLabelWidget = tester.widget<Text>(find.text('Country: '));
      final stateLabelWidget = tester.widget<Text>(find.text('State: '));

      expect(countryLabelWidget.style?.fontWeight, FontWeight.w600);
      expect(stateLabelWidget.style?.fontWeight, FontWeight.w600);
    });

    testWidgets('displays title with correct styling', (tester) async {
      await tester.pumpWidget(createTestWidget());

      final titleWidget = tester.widget<Text>(find.text('Current Selection'));

      expect(titleWidget.style?.fontSize, 18);
      expect(titleWidget.style?.fontWeight, FontWeight.bold);
    });

    testWidgets('handles empty/null values gracefully', (tester) async {
      await tester.pumpWidget(createTestWidget(selectedCountry: null, selectedState: null));

      expect(find.text('Current Selection'), findsOneWidget);
      expect(find.text('Country: '), findsNothing);
      expect(find.text('State: '), findsNothing);
      expect(find.text('Clear Selection'), findsNothing);
    });

    testWidgets('displays correct spacing between elements', (tester) async {
      await tester.pumpWidget(
        createTestWidget(selectedCountry: testCountry, selectedState: testState),
      );

      final sizedBoxes = find.byType(SizedBox);
      expect(
        sizedBoxes,
        findsAtLeastNWidgets(2),
      ); // At least title spacing and country/state spacing
    });
  });
}
