import 'package:appd/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var shortestScreenSide = MediaQuery.of(context).size.shortestSide;

    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );

    return Scaffold(
      body: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: Container(
          color: Colors.black,
          child: Center(
            child: Image.asset(
              'assets/img/logo.png',
              height: shortestScreenSide * 0.8,
              width: shortestScreenSide * 0.8,
            ),
          ),
        ),
      ),
    );
  }
}
