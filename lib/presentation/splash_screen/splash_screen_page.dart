import 'package:flutter/material.dart';
import 'package:getwork/common/constants.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   Future.delayed(const Duration(seconds: 2)).then((value) {
    //     Navigator.push(context, MaterialPageRoute(builder: (context) =>)
    //     );
    //   });
    // });
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Center(
        child: Text('GetWork', style: Constants.boldStyle.copyWith(
          color: Colors.black,
          fontSize: 46
        ),),
      ),
    );
  }
}
