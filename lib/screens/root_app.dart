import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/downloads.dart';
import 'package:netflix_clone/screens/games.dart';
import 'package:netflix_clone/screens/home.dart';
import 'package:netflix_clone/screens/new_and_hot.dart';
import 'package:netflix_clone/screens/quick_laugh.dart';
import 'package:netflix_clone/widget_state/management.dart';
import 'package:provider/provider.dart';

import '../components/json/botton_nav_icon.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: getScreens(context),
      bottomNavigationBar: getFooter(context),
    );
  }
}

Widget getScreens(BuildContext context) {
  return IndexedStack(
    index: Provider.of<StateManager>(context).getActiveTab,
    children: const [
      HomeScreen(),
      GamesScreen(),
      NewAndHotScreen(),
      QuickLaughScreen(),
      DownloadScreen()
    ],
  );
}

Widget getFooter(BuildContext context) {
  return Container(
    height: 80,
    decoration: const BoxDecoration(color: Colors.black45),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(bottomNavBarItems.length, (index) {
        return GestureDetector(
          onTap: () {
            Provider.of<StateManager>(context, listen: false).updateTab(index);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(bottomNavBarItems[index]['icon'],
                    color:
                        Provider.of<StateManager>(context).getActiveTab == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                    size: 30),
                const SizedBox(height: 5),
                Text(
                  bottomNavBarItems[index]['text'],
                  style: TextStyle(
                    color:
                        Provider.of<StateManager>(context).getActiveTab == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    ),
  );
}
