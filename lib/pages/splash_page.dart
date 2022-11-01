import 'package:flutter/material.dart';

import 'package:app_flutterando/core/ui/styles/colorstyle.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/homepage'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: context.colors.backgroundcolor,
        body: Center(
          child: Image.asset('assets/images/masterclass_logo.png'),
        ),
      ),
    );
  }
}
