import 'package:card_app/pages/recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeCard extends StatelessWidget {
  final Recipe recipe;
  const HomeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      
    //  elevation: 40,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            child: Stack(
              children: [
                Image.network(
                  fit: BoxFit.contain,
                  recipe.imageUrl,
                ),
              
                Positioned(
                  right: 0,
                  bottom: 35,
                  child: Container(
                    color: Colors.black54,
                    child: Padding(
                      padding: REdgeInsets.all(22.0),
                      child: Text(
                        'Toast Hawalii',
                        // softWrap: true,
                        // maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.clock),
                  Text(' 20 min'),
                ],
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.bagShopping),
                  Text(' Simple'),
                ],
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.dollarSign),
                  Text('Affordable'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
