import 'package:flutter/material.dart';

import '../../core/shared/text_styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'ف', style: TextStyles.font40mainColorBold),
                      TextSpan(text: 'و', style: TextStyles.font40subColorBold),
                      TextSpan(text: 'ا', style: TextStyles.font40subColorBold),
                      TextSpan(text: 'ت', style: TextStyles.font40mainColorBold),
                      TextSpan(text: 'ي', style: TextStyles.font40mainColorBold),
                      TextSpan(text: 'ر', style: TextStyles.font40mainColorBold),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'أرسل الايصالات الرقمية وقلل النفايات\n الورقية مع ',
                      style: TextStyles.font16mainColorBold),
                  TextSpan(text: 'فواتير', style: TextStyles.font16subColorBold)
                ])),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'الافراد',
                  style: TextStyles.font30BlackBold,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'اذا كنت ممن يقومون شراء الكثير من المنتجات ويحتاجون الى ادارة العديد من الايصالات',
                  style: TextStyles.font18BlackW500,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(child: Image.asset('assets/images/bill.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 3,
                        child: Text(
                            'قلل من فوضى الفواتير الورقية يمكنك الوصول بسهولة الى الفواتير الرقمية وتنظيمها في اي وقت ومكان',
                        style: TextStyles.font16BlackW500,
                        ))
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(child: Image.asset('assets/images/budget.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 3,
                        child: Text(
                            'سيسهل عليك تتبع المصاريف والمشتريات الإدارة ميزانيتك بشكل اكثر دقة',
                        style: TextStyles.font16BlackW500,
                        ))
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(child: Image.asset('assets/images/back-in-time.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 3,
                        child: Text(
                            'يوفر فواتير الوقت والجعد الأولئك الذين بطاحون إلى ارسال الفواتير الى الشركات أو المؤسسات',
                        style: TextStyles.font16BlackW500,
                        ))
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(child: Image.asset('assets/images/secure.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 3,
                        child: Text(
                          'فواتير من الخيار الأمن. حيث أن تتعرض فواتيرك للطف أو الضياع وستحافظ على خصوصيتك',
                          style: TextStyles.font16BlackW500,
                        ))
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
