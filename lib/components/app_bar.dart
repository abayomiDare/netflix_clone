import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key, this.leadWidget});

  final dynamic leadWidget;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leadWidget,
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    // gradient: LinearGradient(
                    //     colors: [
                    //       Colors.red.withOpacity(0.85),
                    //       Colors.black.withOpacity(0.0)
                    //     ],
                    //     end: Alignment.topCenter,
                    //     begin: Alignment.bottomCenter),
                    image: const DecorationImage(
                      image: AssetImage(
                        "images/netflix_avatar.png",
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          )
        ],
      ),
      elevation: 0,
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
