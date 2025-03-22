// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cobaye/features/auth/bloc/bloc.dart';

void main() {
  group('AuthBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          AuthBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for status', () {
      final authBloc = AuthBloc();
      expect(authBloc.state.status, equals(AuthStatus.initial));
    });

       
  });
}
