import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';

import '../../core/widget/tab_item.dart';
import 'home_controller.dart';

class HomePage extends GetResponsiveView<HomeController> {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 2,
          title: const TabBar(
            isScrollable: true,
            dividerColor: Colors.transparent,
            tabs: [
              TabItem(
                iconData: FontAwesome5.hashtag,
                label: "gündem",
              ),
              TabItem(
                iconData: FontAwesome5.hashtag,
                label: "populer",
              ),
              TabItem(
                iconData: FontAwesome5.hashtag,
                label: "deprem",
              ),
              TabItem(
                iconData: FontAwesome5.hashtag,
                label: "vpn",
              ),
              TabItem(
                iconData: FontAwesome5.hashtag,
                label: "hellomoto",
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.post_add),
        ),
        body: Stack(children: [
          DraggableScrollableSheet(
            minChildSize: .1,
            snap: true,
            builder: (BuildContext context, ScrollController scrollController) {
              return Card(
                margin: EdgeInsets.zero,
                elevation: 2,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: const SizedBox(height: 200),
                ),
              );
            },
          )
        ]),
      ),
    );
  }
}
