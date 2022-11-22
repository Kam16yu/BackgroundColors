import 'package:background_colors/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Changing color smoke test', (WidgetTester tester) async {
    // Build app and trigger a frame
    await tester.pumpWidget(const Main());

    expect(find.byWidgetPredicate(
        (Widget widget) =>
            widget is Scaffold && widget.backgroundColor == Colors.white,
      ), findsOneWidget,
    );
    await tester.tap(find.text('Hey there'));
    // Wait for screen to update until no new frames are scheduled
    await tester.pumpAndSettle();
    // Check color changing
    expect(find.byWidgetPredicate(
          (Widget widget) =>
      widget is Scaffold && widget.backgroundColor != Colors.white,
    ), findsOneWidget,
    );
    expect(find.text('Hey there'), findsOneWidget);
  });
}
