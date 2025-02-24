class PopularItemsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularItemsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected,
  });

  static List<PopularItemsModel> getPopularItems() {
    List<PopularItemsModel> popularItems = [];

    popularItems.add(
      PopularItemsModel(
        name: 'Blueberry Pancake',
        iconPath: 'assets/icons/blueberry-pancake.svg',
        level: 'Medium',
        duration: '30min',
        calorie: '230cal',
        boxIsSelected: true,
      ),
    );
    popularItems.add(
      PopularItemsModel(
        name: 'Sushi',
        iconPath: 'assets/icons/salmon-nigiri.svg',
        level: 'Medium',
        duration: '20min',
        calorie: '210cal',
        boxIsSelected: true,
      ),
    );
    popularItems.add(
      PopularItemsModel(
        name: 'Pie',
        iconPath: 'assets/icons/pie.svg',
        level: 'Easy',
        duration: '40min',
        calorie: '110cal',
        boxIsSelected: true,
      ),
    );
    popularItems.add(
      PopularItemsModel(
        name: 'Blueberry Pancake',
        iconPath: 'assets/icons/blueberry-pancake.svg',
        level: 'Medium',
        duration: '30min',
        calorie: '230cal',
        boxIsSelected: true,
      ),
    );
    return popularItems;
  }
}
