import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget_state/management.dart';
import 'package:netflix_clone/screens/downloads.dart';
import 'package:netflix_clone/screens/games.dart';
import 'package:netflix_clone/screens/home.dart';
import 'package:netflix_clone/screens/new_and_hot.dart';
import 'package:netflix_clone/screens/quick_laugh.dart';

class ScreenIndex extends StatelessWidget {
  const ScreenIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
