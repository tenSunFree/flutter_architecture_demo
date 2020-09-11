import 'package:flutter/material.dart';
import 'package:flutter_architecture_demo/home/model/bean/home_photos_bean.dart';
import 'package:flutter_architecture_demo/home/model/dataSource/home_remote_data_source.dart';
import 'package:flutter_architecture_demo/home/model/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({@required HomeRemoteDataSource dataSource})
      : _dataSource = dataSource;

  final HomeRemoteDataSource _dataSource;

  @override
  Future<HomePhotosBean> getNews() async => _dataSource.getNews();
}
