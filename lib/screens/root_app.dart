import 'package:flutter/material.dart';
import 'package:netflix_clone/components/indexedstack.dart';
import 'package:netflix_clone/widget_state/management.dart';
import 'package:provider/provider.dart';

import '../components/app_bar.dart';
import '../components/footer.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: const ScreenIndex(),
      appBar: Provider.of<StateManager>(context).getActiveTab == 3
          ? null
          : CustomAppBar(
              leadWidget: Provider.of<StateManager>(context).getLeadItemType,
            ),
      bottomNavigationBar: const Footer(),
    );
  }
}
