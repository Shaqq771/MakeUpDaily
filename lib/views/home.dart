// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:makeupdaily/model/makeup.api.dart';
// import 'package:makeupdaily/model/makeup.dart';
// import 'package:makeupdaily/views/detail_makeup.dart';
// import 'package:makeupdaily/views/widget/makeup_card.dart';

// // ignore: camel_case_types
// class homePage extends StatefulWidget {
//   const homePage({ Key? key }) : super(key: key);

//   @override
//   _homePageState createState() => _homePageState();
// }

// class _homePageState extends State<homePage> {
// late List<Makeup> _makeup;
// bool _isLoading = true;

// @override
// void initState() {
//   super.initState();
//   getMakeup();
// }


// Future<void> getMakeup() async {
//   _makeup = await MakeupApi.getMakeup();
//   setState(() {
//     _isLoading = false;
//   });

// }

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
//       body: _isLoading ? Center(child: CircularProgressIndicator()):
//       ListView.builder(itemCount: _makeup.length,
//       itemBuilder: (context, index){
//         return GestureDetector(
//           child: MakeupCard(
//             title: _makeup[index].displayName,
//             price: _makeup[index].targetUrl,
//             rating: _makeup[index].rating,
//             thumbnailUrl: _makeup[index].heroImage),
//             onTap: () => {
//               Navigator.push(
//                 context, MaterialPageRoute(builder: 
//                 (context) => DetailMakeup(
//                   displayName: _makeup[index].displayName,
//                   targetUrl: _makeup[index].targetUrl,
//                   rating: _makeup[index].rating,
//                   heroImage: _makeup[index].heroImage
//                 ),)
//                 )
//             }
//             );
//       },
//       ));
//   }
// }