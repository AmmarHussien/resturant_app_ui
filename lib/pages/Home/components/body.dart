
import 'package:flutter/material.dart';


import '../../../components/app_bar_widget.dart';
import '../../../components/drawer_widget.dart';
import '../../../components/floating_btn.dart';
import '../../../components/section_title.dart';
import 'category.dart';
import 'newest.dart';
import 'popular.dart';
import 'search.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          AppBarWidget(),
          Serach(),
          SectionTitle(
            title: 'Categories',
          ),
          CategoriesWidget(),
          SectionTitle(
            title: 'Popular',
          ),
          PopularWidget(),
          SectionTitle(
            title: 'Newest',
          ),
          NewestWidget(),
        ],
      ),
      drawer: const DrawerWidget(),
      floatingActionButton: const FloatingButton(),
    );
  }
}

