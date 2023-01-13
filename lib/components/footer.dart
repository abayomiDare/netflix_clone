import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget_state/management.dart';
import 'json/botton_nav_icon.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(color: Colors.black45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(bottomNavBarItems.length, (index) {
          return GestureDetector(
            onTap: () {
              Provider.of<StateManager>(context, listen: false)
                  .updateTab(index);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 8.0, bottom: 8.0),
              child: Column(
                children: [
                  Icon(bottomNavBarItems[index]['icon'],
                      color: Provider.of<StateManager>(context).getActiveTab ==
                              index
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                      size: 25),
                  const SizedBox(height: 5),
                  Text(
                    bottomNavBarItems[index]['text'],
                    style: TextStyle(
                      fontSize: 10,
                      color: Provider.of<StateManager>(context).getActiveTab ==
                              index
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
}
