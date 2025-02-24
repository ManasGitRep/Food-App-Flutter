import 'package:demo/models/popular_items_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularSectionWidget extends StatefulWidget {
  const PopularSectionWidget({super.key});

  @override
  State<PopularSectionWidget> createState() => _PopularSectionWidgetState();
}

class _PopularSectionWidgetState extends State<PopularSectionWidget> {
  List<PopularItemsModel> items = [];

  void _getInitialInfo() {
    items = PopularItemsModel.getPopularItems();
  }

  @override
  void initState() {
    super.initState();
    _getInitialInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Popular',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        ListView.separated(
          itemCount: items.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(height: 25),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                color:
                    items[index].boxIsSelected
                        ? Colors.white
                        : Colors.transparent,
                borderRadius: BorderRadius.circular(16),
                boxShadow:
                    items[index].boxIsSelected
                        ? [
                          BoxShadow(
                            color: const Color(0xff1D1617).withOpacity(0.07),
                            offset: const Offset(0, 10),
                            blurRadius: 40,
                          ),
                        ]
                        : [],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    height: 65,
                    width: 65,
                    items[index].iconPath,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '${items[index].level} | ${items[index].duration} | ${items[index].calorie}',
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/icons/button.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
