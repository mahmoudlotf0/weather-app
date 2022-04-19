import 'package:flutter/material.dart';
import 'package:weatherapp/resources/strings.dart';

class NoFoundedData extends StatelessWidget {
  const NoFoundedData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        AppString.titleHomePage,
        style: TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
