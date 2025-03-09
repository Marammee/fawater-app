import 'package:flutter/material.dart';
import 'package:project_bills/core/shared/colors.dart';
import 'package:project_bills/core/shared/text_styles.dart';

import 'category_view.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text('ابرز الفئات', style: TextStyles.font22mainColorW600),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.3 / 2

                ),
                itemBuilder: (context, index) => Card(
                  color: ProjectColors.whiteColor,
                  elevation: 5,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryView()));
                    },
                    child: Container(
                      // height: 400,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image: AssetImage('assets/images/logo.png'), height: 70, width: 70),
                          Text('الفئة $index', style: TextStyles.font16mainColorBold),
                        ],
                      ),
                    ),
                  ),
                ),
                itemCount: 6
            ),
          )
        ],
      ),
    );
  }
}
