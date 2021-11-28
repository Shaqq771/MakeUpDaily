// import 'package:flutter/material.dart';
// import 'package:makeupdaily/views/widget/makeup_card.dart';

// class DetailMakeup extends StatelessWidget {
//   final String displayName;
//   final String heroImage;
//   final String rating;
//   final String targetUrl;

//   DetailMakeup(
//     {required this.displayName, 
//     required this.heroImage, 
//     required this.rating, 
//     required this.targetUrl});



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           // ignore: prefer_const_literals_to_create_immutables
//           children: [
//             Icon(Icons.view_list),
//             SizedBox(width: 10),
//             Text("MakeUpDaily")
//           ],
//         ),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             MakeupCard(
//               title: displayName,
//               price: targetUrl,
//               rating: rating,
//               thumbnailUrl: heroImage),
//             Container(
//               child: Column(
//                 children: [
//                   Text(
//                     'Deskripsi',
//                   style: TextStyle(
//                     color: Colors.black,
//                   fontWeight: FontWeight.bold, 
//                   fontSize: 18),
//                   textAlign: TextAlign.left,
//                   ),
//                   Text('Isi Deskripsi....', 
//                   style: TextStyle(color: Colors.black), 
//                   textAlign: TextAlign.justify),

//                 ],
//               ),
//             )  
//         ],
//         ),
//         ),
//     );
//   }
// }
