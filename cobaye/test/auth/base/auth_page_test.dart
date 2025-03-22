// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cobaye/features/auth/auth.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthPage', () {
   

    testWidgets('renders base Scaffold', (tester) async {
      await tester.pumpWidget(MaterialApp(home: AuthPage()));
      expect(find.byType(Scaffold), findsOneWidget);
    });
  });
}
