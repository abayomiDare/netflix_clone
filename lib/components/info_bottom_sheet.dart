import 'dart:ui';
import 'package:flutter/material.dart';
import '../constant/grey_text_const.dart';

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({this.imgStr});
  final String? imgStr;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                          image: AssetImage(imgStr!),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Movie Title',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        children: const [
                          Flexible(
                              child: Text(
                            '2018',
                            style: kGreyTextStyle,
                          )),
                          Flexible(
                              child: Text(
                            '13+',
                            style: kGreyTextStyle,
                          )),
                          Flexible(
                              flex: 2,
                              child: Text(
                                '19 Episodes',
                                style: kGreyTextStyle,
                              )),
                          Spacer(),
                        ],
                      ),
                      const SizedBox(height: 3),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing '
                          'elit, sed do eiusmod tempor incididunt ut labore'
                          ' et dolore magna aliqua.')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ModalIcons(icon: Icons.play_circle_filled_sharp, text: 'Play'),
              ModalIcons(
                  icon: Icons.download_for_offline_outlined, text: 'Download'),
              ModalIcons(
                  icon: Icons.add_circle_outline_outlined, text: 'My List'),
              ModalIcons(icon: Icons.share_outlined, text: 'Share'),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.grey.shade800,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.info_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Details & More'),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ModalIcons extends StatelessWidget {
  ModalIcons({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 37),
        const SizedBox(height: 5),
        Text(text, style: kGreyTextStyle)
      ],
    );
  }
}
