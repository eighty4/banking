import 'package:flutter_test/flutter_test.dart';

import 'package:banking/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const BankingApp());
    expect(find.text('New Activity'), findsOneWidget);
    expect(find.text('Accounts'), findsOneWidget);
    expect(find.text('Receipts'), findsOneWidget);
    expect(find.text('Business'), findsOneWidget);
    expect(find.text('Purchases'), findsOneWidget);
    expect(find.text('Medical'), findsOneWidget);
  });
}
