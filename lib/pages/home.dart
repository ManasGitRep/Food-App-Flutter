import 'package:demo/models/category_model.dart';
import 'package:demo/models/diet_model.dart';
import 'package:demo/models/popular_items_model.dart';
import 'package:demo/pages/components/appBar.dart';
import 'package:demo/pages/components/categorySection.dart';
import 'package:demo/pages/components/dietSection.dart';
import 'package:demo/pages/components/drawer.dart';
import 'package:demo/pages/components/popularSection.dart';
import 'package:demo/pages/components/searchBar.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularItemsModel> items = [];

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    items = PopularItemsModel.getPopularItems();
  }

  @override
  void initState() {
    _getInitialInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'QuickEats'),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SearchBarWidget(),
          const SizedBox(height: 40),
          CategorySectionWidget(categories: categories),
          const SizedBox(height: 40),
          DietSectionWidget(diets: diets),
          const SizedBox(height: 40),
          PopularSectionWidget(),
          const SizedBox(height: 40),
        ],
      ),
      endDrawer: DrawerWidget(),
    );
  }
}
