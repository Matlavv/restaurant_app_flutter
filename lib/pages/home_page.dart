import 'package:flutter/material.dart';
import 'package:restaurant_app/components/my_current_location.dart';
import 'package:restaurant_app/components/my_description_box.dart';
import 'package:restaurant_app/components/my_drawer.dart';
import 'package:restaurant_app/components/my_sliver_app_bar.dart';
import 'package:restaurant_app/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScroller) => [
                  MySliverAppBar(
                    title: MyTabBar(tabController: _tabController),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        //location
                        const MyCurrentLocation(),
                        // description
                        const MyDescriptionBox()
                      ],
                    ),
                  ),
                ],
            body: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => const Text('Hello'),
                ),
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => const Text('Miam'),
                ),
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => const Text('Grrrr'),
                ),
              ],
            )));
  }
}
