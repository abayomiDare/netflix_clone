import 'package:flutter/material.dart';
import '../components/json/coming_soon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuickLaughScreen extends StatelessWidget {
  const QuickLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(comingSoonJson.length, (index) {

          return Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(comingSoonJson[index]['img']),
                  fit: BoxFit.cover,
                )),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
                          children: const [
                            Icon(
                              FontAwesomeIcons.faceLaughBeam,
                              size: 28,
                            ),
                            SizedBox(height: 5),
                            Text('91.1k')
                          ],
                        ),
                        const SizedBox(height: 15),
                        Column(
                          children: const [
                            Icon(
                              Icons.add,
                              size: 28,
                            ),
                            SizedBox(height: 5),
                            Text('My List')
                          ],
                        ),
                        const SizedBox(height: 15),
                        Column(
                          children: const [
                            Icon(
                              FontAwesomeIcons.paperPlane,
                              size: 28,
                            ),
                            SizedBox(height: 5),
                            Text('1.24k')
                          ],
                        ),
                        const SizedBox(height: 15),
                        Column(
                          children: const [
                            Icon(
                              FontAwesomeIcons.play,
                              size: 28,
                            ),
                            SizedBox(height: 5),
                            Text('Play')
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  )),
            ],
          );
        }),
      ),
    );
  }
}
