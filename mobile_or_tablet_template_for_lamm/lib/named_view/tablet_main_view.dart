import 'package:flutter/material.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_view_list_view_model/tablet_main_view_list_view_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TabletMainView
    extends StatefulWidget
{
  @override
  State<TabletMainView> createState() => _TabletMainViewState();
}

class _TabletMainViewState
    extends State<TabletMainView>
{
  late final TabletMainViewListViewModel _lo;

  @override
  void initState() {
    _lo = TabletMainViewListViewModel();
    super.initState();
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Text("Tablet (MaxRowCount: 2)"),
              ResponsiveGridView.builder(
                gridDelegate: const ResponsiveGridDelegate(
                    crossAxisExtent: 260,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.37),
                maxRowCount: 2,
                itemCount: 30,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(4, 8, 0, 16),
                alignment: Alignment.center,
                itemBuilder: (context, index) {
                  return const ListTile(title: Text("Op",),);
                },
              ),
            ],
          ),
        ),
      ),);
  }
}