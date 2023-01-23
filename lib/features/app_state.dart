import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class AppState extends ChangeNotifier {
  final BehaviorSubject<bool> isAuthenticated = BehaviorSubject<bool>.seeded(false);

  bool get isAuthenticatedValue => isAuthenticated.value;

  set isAuthenticatedValue(bool value) {
    isAuthenticated.add(value);
    notifyListeners();
  }
}