import 'package:flutter/widgets.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: "Honey Pancake",
        iconPath: 'assets/icons/honey-pancakes.svg',
        level: 'Easy',
        duration: '30mins',
        calorie: '180cal',
        boxColor: Color(0xffFCC6FF),
        viewIsSelected: true,
      ),
    );
    diets.add(
      DietModel(
        name: "Canai Bread",
        iconPath: 'assets/icons/canai-bread.svg',
        level: 'Easy',
        duration: '30mins',
        calorie: '180cal',
        boxColor: Color(0xff92A3FD),
        viewIsSelected: true,
      ),
    );
    diets.add(
      DietModel(
        name: "Sushi",
        iconPath: 'assets/icons/salmon-nigiri.svg',
        level: 'Easy',
        duration: '30mins',
        calorie: '180cal',
        boxColor: Color(0xFFD5F093),
        viewIsSelected: true,
      ),
    );
    diets.add(
      DietModel(
        name: "Honey Pancake",
        iconPath: 'assets/icons/honey-pancakes.svg',
        level: 'Easy',
        duration: '30mins',
        calorie: '180cal',
        boxColor: Color(0xFFFFEFC8),
        viewIsSelected: true,
      ),
    );
    return diets;
  }
}
