import 'package:flutter/material.dart';
import 'package:test_api_bloc/src/bloc/provider_user.dart';

import 'src/views/home.dart';

void main() {
  runApp(MainPage());
}


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserProvider(
      child: MaterialApp(
        title: "BLoc APP",
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

