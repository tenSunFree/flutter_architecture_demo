import 'package:flutter/material.dart';
import 'package:flutter_architecture_demo/common/app_change_notifier.dart';
import 'package:flutter_architecture_demo/common/app_error.dart';
import 'package:flutter_architecture_demo/home/model/bean/home_photos_bean.dart';
import 'package:flutter_architecture_demo/home/model/repository/home_repository.dart';
import 'package:flutter_architecture_demo/home/model/repository/home_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ChangeNotifierProvider<HomeViewModel> homeViewModelChangeNotifierProvider =
    ChangeNotifierProvider((ref) =>
        HomeViewModel(ref, repository: ref.read(homeRepositoryProvider)));

class HomeViewModel extends BaseAppChangeNotifier {
  HomeViewModel(ProviderReference ref, {@required HomeRepository repository})
      : _repository = repository,
        super(ref);

  final HomeRepository _repository;

  HomePhotosBean _bean;

  HomePhotosBean get bean => _bean;

  Future<void> fetchNews() async {
    return _repository.getNews().then((value) {
      doOnSuccess();
      _bean = value;
    }).catchError((dynamic error) {
      doOnError(AppError(error));
    }).whenComplete(() {
      notifyListeners();
    });
  }
}
