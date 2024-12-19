import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sam_uiz/sam_uiz.dart';

void main() {
  testWidgets('DizzexButton displays text', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DizzexButton(
            title: 'Click Me',
            onPressed: () {},
          ),
        ),
      ),
    );

    expect(find.text('Click Me'), findsOneWidget);
  });

  testWidgets('DizzexCard displays child widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DizzexCard(
            child: Text('Card Content'),
          ),
        ),
      ),
    );

    expect(find.text('Card Content'), findsOneWidget);
  });

  testWidgets('DizzexInputBox displays hint text', (WidgetTester tester) async {
    final controller = TextEditingController();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DizzexInputBox(
            controller: controller,
            hintText: 'Enter text',
            title: 'Input Field',
          ),
        ),
      ),
    );

    expect(find.text('Input Field'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });
}
