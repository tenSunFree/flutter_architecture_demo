import 'package:flutter_architecture_demo/common/remote/dio_manager_provider.dart';
import 'package:flutter_architecture_demo/home/model/dataSource/home_remote_data_source.dart';
import 'package:flutter_architecture_demo/home/model/dataSource/home_remote_data_source_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeRemoteDataSourceProvider = Provider<HomeRemoteDataSource>(
    (ref) => HomeRemoteDataSourceImpl(dioManager: ref.read(dioManagerProvider)));
