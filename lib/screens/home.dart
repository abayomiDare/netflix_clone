import 'package:flutter/material.dart';
import 'package:netflix_clone/components/json/home_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // body: homeWidget(context),
        body: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget homeWidget(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Stack(
      children: [
        SizedBox(
          width: size.height - 80,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/banner.webp'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.85),
                            Colors.black.withOpacity(0.0)
                          ],
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter),
                    ),
                  ),
                  // SafeArea(
                  //   child: Container(
                  //     height: 10,
                  //     width: 10,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  SizedBox(
                    height: 500,
                    width: size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/title_img.webp', width: 300),
                        const SizedBox(height: 15),
                        const Text(
                          'Excting - Sci-Fi Drama - Sci-Fi Adventure',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.add,
                        size: 25,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Play',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.info_outline_rounded,
                        size: 30,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'info',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "My List",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(mylist.length, (index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                                image: AssetImage(mylist[index]['img']),
                                fit: BoxFit.cover),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "Popular on Netflix",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(popularList.length, (index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                  image: AssetImage(popularList[index]['img']),
                                  fit: BoxFit.cover)),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "Trending Now",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(trendingList.length, (index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                  image: AssetImage(trendingList[index]['img']),
                                  fit: BoxFit.cover)),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "Netflix Originals",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: List.generate(originalList.length, (index) {
                        return Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8),
                            width: 165,
                            height: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image:
                                        AssetImage(originalList[index]['img']),
                                    fit: BoxFit.cover)),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "Anime",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: List.generate(animeList.length, (index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 8),
                            width: 110,
                            height: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image: AssetImage(animeList[index]['img']),
                                    fit: BoxFit.cover)),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
