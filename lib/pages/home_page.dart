import 'package:flutter/material.dart';

import 'package:app_flutterando/core/ui/styles/colorstyle.dart';
import 'package:app_flutterando/core/ui/widgets/custom_appbar_home.dart';
import 'package:app_flutterando/core/ui/widgets/custom_card_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colors.backgroundcolor,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 42, right: 15),
              child: Column(
                children: const [
                  CustomAppbarHome(
                    title: 'Atividades',
                    imagelogo: AssetImage('assets/icons/logo.png'),
                    imageicon: AssetImage('assets/icons/moon.png'),
                  ),
                  SizedBox(height: 20),
                  CustomCardHome(
                    title: 'Animações',
                    qtd: 4,
                    description:
                        'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                    image: AssetImage('assets/icons/running.png'),
                  ),
                  SizedBox(height: 16),
                  CustomCardHome(
                    title: 'Leitura de Mockup',
                    qtd: 2,
                    description:
                        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                    image: AssetImage('assets/icons/glasses.png'),
                  ),
                  SizedBox(height: 16),
                  CustomCardHome(
                    title: 'Playground',
                    qtd: 3,
                    description:
                        'Ambiente destinado a testes e estudos em geral',
                    image: AssetImage('assets/icons/toys.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
