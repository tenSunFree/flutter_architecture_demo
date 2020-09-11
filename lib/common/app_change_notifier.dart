import 'package:flutter/foundation.dart';
import 'package:flutter_architecture_demo/common/app_error.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ChangeNotifierProvider<AppChangeNotifier> appChangeNotifierProvider =
    ChangeNotifierProvider((ref) => AppChangeNotifier());

class BaseAppChangeNotifier extends ChangeNotifier {
  BaseAppChangeNotifier(ProviderReference ref) {
    _appChangeNotifier = ref.read(appChangeNotifierProvider);
  }

  AppChangeNotifier _appChangeNotifier;

  void doOnError(AppError appError) {
    _appChangeNotifier.doOnError(appError);
  }

  void doOnSuccess() {
    _appChangeNotifier.doOnSuccess();
  }
}

class AppChangeNotifier extends ChangeNotifier {
  AppError _error;

  bool _hasBeenHandled = true;

  bool get hasBeenHandled => _hasBeenHandled;

  void doOnError(AppError appError) {
    _error = appError;
    _hasBeenHandled = false;
    notifyListeners();
  }

  void doOnSuccess() {
    _error = null;
    _hasBeenHandled = true;
  }

  AppError getErrorIfNotHandled() {
    if (_hasBeenHandled) {
      _error = null;
      return _error;
    } else {
      _hasBeenHandled = true;
      return _error;
    }
  }

  AppError getError() => _error;
}
