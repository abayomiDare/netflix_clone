import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/root_app.dart';
import 'package:netflix_clone/widget_state/management.dart';
import 'package:provider/provider.dart';

void main() => runApp(const NetflixClone());

class NetflixClone extends StatelessWidget {
  const NetflixClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => StateManager(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          ),
          scaffoldBackgroundColor: Colors.black,
        ),
        home: const RootApp(),
      ),
    );
  }
}
