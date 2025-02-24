import 'package:demo/models/diet_model.dart';
import 'package:demo/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DietSectionWidget extends StatefulWidget {
  final List<DietModel> diets;

  const DietSectionWidget({super.key, required this.diets});

  @override
  State<DietSectionWidget> createState() => _DietSectionWidgetState();
}

class _DietSectionWidgetState extends State<DietSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Recommendation for Diet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 240,
          child: ListView.separated(
            itemCount: widget.diets.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => const SizedBox(width: 25),
            itemBuilder: (context, index) {
              final diet = widget.diets[index];
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: diet.boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingsPage(),
                          ),
                        );
                      },
                      child: SvgPicture.asset(diet.iconPath),
                    ),
                    Text(
                      diet.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '${diet.level} | ${diet.duration} | ${diet.calorie}',
                      style: const TextStyle(
                        color: Color(0xff7B6F72),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors:
                              diet.viewIsSelected
                                  ? [
                                    const Color(0xff9DCEFF),
                                    const Color(0xff9DCEFF),
                                  ]
                                  : [Colors.transparent, Colors.transparent],
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'View',
                          style: TextStyle(
                            color:
                                diet.viewIsSelected
                                    ? Colors.white
                                    : const Color(0xffC58BF2),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
