import 'package:flutter/material.dart';

import 'package:app_flutterando/core/ui/styles/colorstyle.dart';
import 'package:app_flutterando/core/ui/styles/text_styles.dart';

class CustomAppbarHome extends StatelessWidget {
  final String title;
  final AssetImage imagelogo;
  final AssetImage imageicon;
  const CustomAppbarHome({
    super.key,
    required this.title,
    required this.imagelogo,
    required this.imageicon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 48,
          height: 48,
          child: Image(image: imagelogo),
          //child: Image.asset('assets/icons/logo.png'),
        ),
        const SizedBox(
          width: 4,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: context.textStyles.textPrimaryFontSemiBold
                  .copyWith(fontSize: 20, color: context.colors.primarycolor),
            ),
            Text('Fluterrando Masterclass',
                style: context.textStyles.textPrimaryFontSemiBold.copyWith(
                    fontSize: 12, color: context.colors.primarycolor)),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: InkWell(
            onTap: () {},
            child: SizedBox(
              width: 22,
              height: 24,
              child: Image(image: imageicon),
              //hild: Image.asset('assets/icons/moon.png'),
            ),
          ),
        ),
      ],
    );
  }
}
