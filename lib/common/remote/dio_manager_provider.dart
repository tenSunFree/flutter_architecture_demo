import 'package:flutter_architecture_demo/common/remote/dio_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioManagerProvider = Provider<DioManager>((_) => DioManager.getInstance());
