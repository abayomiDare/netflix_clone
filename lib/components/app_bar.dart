import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar getAppBar() {
  var radius = 8.0;
  var iconWidth = 14.0;
  return AppBar(
    // toolbarOpacity: 0.1,
    actions: [
      const Icon(
        FontAwesomeIcons.magnifyingGlass,
        size: 30,
      ),
      SizedBox(
        width: 16,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            'images/Netflix-avatar.png',
            // width: 14,
            fit: BoxFit.fill,
            // height: 14,
            // width: 24,
            // decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(radius),
                // image: const DecorationImage(
              // image: AssetImage(),
            // )),
          ),
        ),
      ),
      SizedBox(
        width: 16,
      ),
      // IconButton(
      //     icon: Image.asset(
      //       "images/Netflix-avatar.png",
      //       fit: BoxFit.cover,
      //       width: 40,
      //       height: 26,
      //     ),
      //     onPressed: () {}),
    ],
    leading: Image.asset(
      "images/logo.ico",
      width: 30,
      fit: BoxFit.cover,
    ),
    elevation: 0,
  );
}
