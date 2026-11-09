import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:try_session/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Counter integration test', (tester) async {

    // 1. Open the application
    app.main();

    await tester.pumpAndSettle();

    // 2. Check initial counter value
    expect(find.text('0'), findsOneWidget);

    // 3. Tap increment button
    await tester.tap(find.text('Increment'));

    await tester.pumpAndSettle();

    // 4. Check updated counter value
    expect(find.text('1'), findsOneWidget);

  });
}