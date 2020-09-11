import 'package:flutter_architecture_demo/home/model/dataSource/home_remote_data_source_provider.dart';
import 'package:flutter_architecture_demo/home/model/repository/home_repository.dart';
import 'package:flutter_architecture_demo/home/model/repository/home_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) =>
    HomeRepositoryImpl(dataSource: ref.read(homeRemoteDataSourceProvider)));
