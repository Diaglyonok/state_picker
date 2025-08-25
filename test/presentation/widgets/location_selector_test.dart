import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:state_picker_temp/features/location_picker/presentation/widgets/location_selector.dart';

void main() {
  Widget createTestWidget({
    String? selectedValue,
    required String hintText,
    bool isEnabled = true,
    VoidCallback? onTap,
  }) {
    return MaterialApp(
      home: Scaffold(
        body: LocationSelector(
          selectedValue: selectedValue,
          hintText: hintText,
          isEnabled: isEnabled,
          onTap: onTap,
        ),
      ),
    );
  }

  group('LocationSelector', () {
    testWidgets('displays hint text when no value is selected', (tester) async {
      await tester.pumpWidget(createTestWidget(
        hintText: 'Choose a country',
      ));

      expect(find.text('Choose a country'), findsOneWidget);
      expect(find.byIcon(Icons.keyboard_arrow_down), findsOneWidget);
    });

    testWidgets('displays selected value when provided', (tester) async {
      await tester.pumpWidget(createTestWidget(
        selectedValue: 'United States',
        hintText: 'Choose a country',
      ));

      expect(find.text('United States'), findsOneWidget);
      expect(find.text('Choose a country'), findsNothing);
    });

    testWidgets('calls onTap when tapped and enabled', (tester) async {
      bool wasTapped = false;
      await tester.pumpWidget(createTestWidget(
        hintText: 'Choose a country',
        onTap: () => wasTapped = true,
      ));

      await tester.tap(find.byType(LocationSelector));
      await tester.pump();

      expect(wasTapped, isTrue);
    });

    testWidgets('does not call onTap when tapped and disabled', (tester) async {
      bool wasTapped = false;
      await tester.pumpWidget(createTestWidget(
        hintText: 'Select a country first',
        isEnabled: false,
        onTap: () => wasTapped = true,
      ));

      await tester.tap(find.byType(LocationSelector));
      await tester.pump();

      expect(wasTapped, isFalse);
    });

    testWidgets('shows correct styling when enabled', (tester) async {
      await tester.pumpWidget(createTestWidget(
        selectedValue: 'United States',
        hintText: 'Choose a country',
        isEnabled: true,
      ));

      final container = tester.widget<Container>(find.byType(Container));
      final decoration = container.decoration as BoxDecoration;
      
      expect(decoration.border, isA<Border>());
      expect(decoration.borderRadius, BorderRadius.circular(12));
    });

    testWidgets('shows correct styling when disabled', (tester) async {
      await tester.pumpWidget(createTestWidget(
        hintText: 'Select a country first',
        isEnabled: false,
      ));

      final icon = tester.widget<Icon>(find.byIcon(Icons.keyboard_arrow_down));
      expect(icon.color, isNotNull);
    });

    testWidgets('has correct container height', (tester) async {
      await tester.pumpWidget(createTestWidget(
        hintText: 'Choose a country',
      ));

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.maxHeight, 56);
    });

    testWidgets('has proper padding and spacing', (tester) async {
      await tester.pumpWidget(createTestWidget(
        hintText: 'Choose a country',
      ));

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.padding, const EdgeInsets.symmetric(horizontal: 12));
    });

    testWidgets('maintains proper layout with long text', (tester) async {
      const longCountryName = 'United States of America with a very long name';
      
      await tester.pumpWidget(createTestWidget(
        selectedValue: longCountryName,
        hintText: 'Choose a country',
      ));

      expect(find.text(longCountryName), findsOneWidget);
      expect(find.byIcon(Icons.keyboard_arrow_down), findsOneWidget);
    });

    testWidgets('respects border radius', (tester) async {
      await tester.pumpWidget(createTestWidget(
        hintText: 'Choose a country',
      ));

      final inkWell = tester.widget<InkWell>(find.byType(InkWell));
      expect(inkWell.borderRadius, BorderRadius.circular(12));
    });
  });
}