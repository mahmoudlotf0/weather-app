import 'package:flutter/material.dart';
import 'package:weatherapp/Presentation/pages/search/search_page.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return SearchPage();
          }),
        );
      },
      icon: const Icon(Icons.search),
    );
  }
}
