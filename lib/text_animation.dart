// import 'package:lottie/lottie.dart';
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       child: Lottie.network(
//         'https://assets1.lottiefiles.com/private_files/lf30_is6flrfu.json',
//         repeat: true,
//         frameRate: FrameRate(60),
//         fit: BoxFit.contain,
//       ),
//     );
//   }
// }


// SafeArea(
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Padding(
// padding: const EdgeInsets.only(left: 10),
// child: Row(
// children: [
// Image.asset(
// "images/logo.ico",
// width: 35,
// fit: BoxFit.cover,
// )
// ],
// ),
// ),
// Row(
// children: [
// IconButton(
// icon: Icon(
// Icons.collections_bookmark,
// size: 28,
// ),
// onPressed: () {}),
// ],
// )
// ],
// ),
// SizedBox(
// height: 15,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Text(
// "TV Shows",
// style: TextStyle(
// fontSize: 15, fontWeight: FontWeight.w500),
// ),
// Text(
// "Movies",
// style: TextStyle(
// fontSize: 15, fontWeight: FontWeight.w500),
// ),
// Row(
// children: [
// Text(
// "Categories",
// style: TextStyle(
// fontSize: 15, fontWeight: FontWeight.w500),
// ),
// SizedBox(
// width: 3,
// ),
// Icon(Icons.keyboard_arrow_down)
// ],
// )
// ],
// )
// ],
// ),
// ),



// AppBar getAppBar() {
//   var radius = 8.0;
//   var iconWidth = 14.0;
//   return AppBar(
//     leadingWidth: 50,
//
//     backgroundColor: Colors.transparent,
//     // toolbarOpacity: 0.1,
//     actions: [
//
//       SizedBox(
//         width: 16,
//       ),
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(radius),
//           clipBehavior: Clip.antiAlias,
//           child: Image.asset(
//             'images/netflix_avatar.png',
//             // width: 14,
//             fit: BoxFit.fill,
//             // height: 14,
//             // width: 24,
//             // decoration: BoxDecoration(
//             // borderRadius: BorderRadius.circular(radius),
//             // image: const DecorationImage(
//             // image: AssetImage(),
//             // )),
//           ),
//         ),
//       ),
//       SizedBox(
//         width: 16,
//       ),
//       // IconButton(
//       //     icon: Image.asset(
//       //       "images/Netflix-avatar.png",
//       //       fit: BoxFit.cover,
//       //       width: 40,
//       //       height: 26,
//       //     ),
//       //     onPressed: () {}),
//     ],
//     leading: Image.asset(
//       height: 10.0,
//       "images/logo.ico",
//       width: 10,
//       fit: BoxFit.cover,
//     ),
//     elevation: 0,
//   );
// }