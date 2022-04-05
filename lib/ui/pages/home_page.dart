import 'package:flutter/material.dart';
import 'package:weatherapp/resources/strings.dart';
import 'package:weatherapp/ui/pages/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SearchButton(),
        ],
        title: const Text(AppString.titleHomePageAppBar),
      ),
      body: const Center(
        child: Text(
          AppString.titleHomePage,
          style: TextStyle(
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

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
