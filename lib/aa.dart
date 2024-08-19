// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Aa extends StatelessWidget {
//   const Aa({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black87,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Text(
//               'واتساب',
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//           ),
//         ],
//         title: Row(
//           children: [
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.more_vert,
//                   color: Colors.white,
//                 )),
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.search,
//                   color: Colors.white,
//                 )),
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.camera_alt_outlined,
//                   color: Colors.white,
//                 )),
//           ],
//         ),
//       ),
//       body: Container(
//         color: Colors.black87,
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 _buildCategoryButton('المجموعات'),
//                 SizedBox(width: 5),
//                 _buildCategoryButton('غير مقرؤه'),
//                 SizedBox(width: 5),
//                 _buildCategoryButton('الكل'),
//               ],
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Text(
//                     '3',
//                     style: TextStyle(color: Colors.lightGreenAccent),
//                   ),
//                 ),
//                 Spacer(),
//                 Text(
//                   'مؤرشفه',
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.archive_outlined,
//                     color: Colors.white,
//                     size: 20,
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: ListView.builder(
//                 padding: const EdgeInsets.all(8),
//                 itemCount: 5,
//                 itemBuilder: (BuildContext context, int index) {
//                   return _buildChatItem();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildCategoryButton(String text) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.black12,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//         child: Text(
//           text,
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildChatItem() {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Text(
//               ' امس ',
//               style: TextStyle(color: Colors.grey, fontSize: 12),
//             ),
//           ),
//           Spacer(),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Abdo Shahin',
//                 style: TextStyle(color: Colors.white, fontSize: 14),
//               ),
//               Text(
//                 'هتروح الجيم',
//                 style: TextStyle(color: Colors.grey, fontSize: 12),
//                 textDirection: TextDirection.rtl,
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Container(
//               width: 50,
//               height: 50,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(200.0)),
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(200.0),
//                 child: Image.network(
//                   'https://th.bing.com/th/id/OIP.q2YsgHsjuMWvKbVbnp-aJwHaHa?w=201&h=201&c=7&r=0&o=5&pid=1.7',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
