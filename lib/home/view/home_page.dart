import 'package:flutter/material.dart';
import 'package:flutter_architecture_demo/common/app_change_notifier.dart';
import 'package:flutter_architecture_demo/home/view/home_list_view_item_widget.dart';
import 'package:flutter_architecture_demo/home/view/home_loading_widget.dart';
import 'package:flutter_architecture_demo/home/viewModel/home_view_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final app = useProvider(appChangeNotifierProvider);
    return Scaffold(
        appBar: AppBar(title: const Text('HomePage')),
        body: Container(
            color: Color(0xFFF3E4C6),
            child: Center(child: HookBuilder(builder: (context) {
              final homeViewModel =
                  useProvider(homeViewModelChangeNotifierProvider);
              final snapshot = useFuture(useMemoized(
                  () => homeViewModel.fetchNews(),
                  [homeViewModel.bean.toString(), app.getError()?.type]));
              return snapshot.connectionState == ConnectionState.waiting
                  ? const HomeLoadingWidget()
                  : ListView.builder(
                      itemCount: homeViewModel.bean != null
                          ? homeViewModel.bean.list.length
                          : 1,
                      itemBuilder: (_, index) {
                        return homeViewModel.bean != null
                            ? HomeListViewItemWidget(
                                article: homeViewModel.bean.list[index])
                            : Text(app.getErrorIfNotHandled().message,
                                style: TextStyle(color: Color(0xFF8F4F06)));
                      });
            }))));
  }
}
