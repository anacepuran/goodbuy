import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<double> _mockActual = [12.0, 14.0, 15.0, 16.0, 19.0, 24.0, 25.0];
  List<double> get mockActual => _mockActual;
  set mockActual(List<double> value) {
    _mockActual = value;
  }

  void addToMockActual(double value) {
    mockActual.add(value);
  }

  void removeFromMockActual(double value) {
    mockActual.remove(value);
  }

  void removeAtIndexFromMockActual(int index) {
    mockActual.removeAt(index);
  }

  void updateMockActualAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    mockActual[index] = updateFn(_mockActual[index]);
  }

  void insertAtIndexInMockActual(int index, double value) {
    mockActual.insert(index, value);
  }

  List<double> _mockHypothetical = [18.0, 24.0, 29.0, 30.0, 32.0, 33.0, 38.0];
  List<double> get mockHypothetical => _mockHypothetical;
  set mockHypothetical(List<double> value) {
    _mockHypothetical = value;
  }

  void addToMockHypothetical(double value) {
    mockHypothetical.add(value);
  }

  void removeFromMockHypothetical(double value) {
    mockHypothetical.remove(value);
  }

  void removeAtIndexFromMockHypothetical(int index) {
    mockHypothetical.removeAt(index);
  }

  void updateMockHypotheticalAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    mockHypothetical[index] = updateFn(_mockHypothetical[index]);
  }

  void insertAtIndexInMockHypothetical(int index, double value) {
    mockHypothetical.insert(index, value);
  }

  List<int> _mockLabels = [1, 2, 3, 4, 5, 6, 7];
  List<int> get mockLabels => _mockLabels;
  set mockLabels(List<int> value) {
    _mockLabels = value;
  }

  void addToMockLabels(int value) {
    mockLabels.add(value);
  }

  void removeFromMockLabels(int value) {
    mockLabels.remove(value);
  }

  void removeAtIndexFromMockLabels(int index) {
    mockLabels.removeAt(index);
  }

  void updateMockLabelsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    mockLabels[index] = updateFn(_mockLabels[index]);
  }

  void insertAtIndexInMockLabels(int index, int value) {
    mockLabels.insert(index, value);
  }
}
