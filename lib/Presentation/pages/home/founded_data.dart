import 'package:flutter/material.dart';
import 'package:weatherapp/Presentation/resources/assets_manager.dart';

class FoundedData extends StatelessWidget {
  const FoundedData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 3),
        const Text(
          'Cairo',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'update: 12:18 pm',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(ImageAseets.clearImage),
            const Text(
              '30',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: const [
                Text(
                  'maxTemp: 25',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  'minTemp: 12 ',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        const Text(
          'Clear',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(flex: 5),
      ],
    );
  }
}
