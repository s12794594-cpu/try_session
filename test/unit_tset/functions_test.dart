import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test/test.dart' hide expect;
import 'package:try_session/utils/functions.dart';
void main() {
  testWidgets('displays button with text', (tester) async {
    await tester.pumpWidget(MaterialApp(home: HelloButton()));
    expect(find.text(' Hello'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}