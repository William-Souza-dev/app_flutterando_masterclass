import 'package:flutter/material.dart';

import 'package:app_flutterando/core/ui/styles/colorstyle.dart';
import 'package:app_flutterando/core/ui/styles/text_styles.dart';

class CustomCardHome extends StatelessWidget {
  final String title;
  final int qtd;
  final String description;
  final AssetImage image;

  const CustomCardHome({
    Key? key,
    required this.title,
    required this.qtd,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 220,
      decoration: BoxDecoration(
        color: context.colors.cardcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(
                  12,
                ),
                child: CircleAvatar(
                  child: Image(image: image),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: context.textStyles.textPrimaryFontMedium
                    .copyWith(color: context.colors.primarycolor, fontSize: 16),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  'Exercicios',
                  style: context.textStyles.textSecondaryFontRegular.copyWith(
                      color: context.colors.secundarycolor, fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 11),
                child: Text(
                  '$qtd',
                  style: context.textStyles.textPrimaryFontMedium.copyWith(
                      color: context.colors.primarycolor, fontSize: 12),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 15),
            child: Text(
              description,
              style: context.textStyles.textSecondaryFontRegular.copyWith(
                color: context.colors.secundarycolor,
                fontSize: 14,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const Spacer(),
          Padding(
            padding:
                const EdgeInsets.only(left: 18.56, bottom: 29, right: 10.56),
            child: Row(
              children: [
                Image.asset('assets/icons/github.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Acessar código fonte',
                  style: context.textStyles.textSecondaryFontRegular.copyWith(
                      color: context.colors.primarycolor, fontSize: 12),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 34.5,
                    width: 119,
                    decoration: BoxDecoration(
                      color: context.colors.buttoncolor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      'Ver Mais',
                      style: context.textStyles.textPrimaryFontSemiBold
                          .copyWith(
                              color: context.colors.primarycolor, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
