// // import 'package:flutter/material.dart';
// // // import '../component/info.dart';

// // class Information extends StatefulWidget {
// //   Information({Key key, this.title}): super(key: key);

// //   final String title;

// //   @override
// //   _InformationState createState() => _InformationState();
// // }

// // class _InformationState extends State<Information> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: FutureBuilder<String>(
// //           future: infoData(),
// //           builder: (BuildContext context, AsyncSnapshot snapshot) {
// //             if (snapshot.connectionState == ConnectionState.done) { // 若请求结束
// //               if (snapshot.hasError) {
// //                 return Text('Error: ${snapshot.error}');
// //               } else {
// //                 return Text('Contents: ${snapshot.data}');
// //               }
// //             } else {
// //               return CircularProgressIndicator();
// //             }
// //           },
// //         ),
// //       )
// //     );
// //   }
// // }

// // Future<String> infoData() async {
// //   return Future.delayed(Duration(seconds: 2), () => '我是一条信息');
// // }
// // import 'package:flutter/material.dart';
// // import 'package:english_words/english_words.dart';
// // class Information extends StatefulWidget {
// //   @override
// //   _InformationState createState() => _InformationState();
// // }

// // class _InformationState extends State<Information> {
// //   static const loadingTag = '##loading##';
// //   var _item = <String>[loadingTag];

// //   @override
// //   void initState() {
// //     super.initState();
// //     _retrieveData();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.separated(
// //       itemCount: _item.length,
// //       itemBuilder: (context, index) {
// //         if (_item[index] == loadingTag) {
// //           if (_item.length - 1 < 50) {
// //             _retrieveData();
// //             return Container(
// //               padding: const EdgeInsets.all(16.0),
// //               alignment: Alignment.center,
// //               child: SizedBox(
// //                 width: 24.0,
// //                 height: 24.0,
// //                 child: CircularProgressIndicator(strokeWidth: 2.0,),
// //               ),
// //             );
// //           } else {
// //             return Container(
// //               alignment: Alignment.center,
// //               padding: EdgeInsets.all(16.0),
// //               child: Text('没有更多了', style: TextStyle(color: Colors.grey),),
// //             );
// //           }
// //         }
// //         return ListTile(title: Text(_item[index]),);
// //       },
// //       separatorBuilder: (context, index) => Divider(height: .0,),
// //     );
// //   }

// //   setNewItem() {
// //     return '这是一条加载项';
// //   }

// //   void _retrieveData() {
// //     Future.delayed(Duration(seconds: 2)).then((e) {
// //       _item.insertAll(_item.length - 1,
// //         generateWordPairs().take(20).map((e) => e.asPascalCase).toList()
// //         // setNewItem()
// //       );
// //       setState(() {
        
// //       });
// //     });
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// class Information extends StatefulWidget {
//   @override
//   _InformationState createState() => _InformationState();
// }

// class _InformationState extends State<Information> {

//   static String loadFlag = "continue";
//   List<String> wordsList = [loadFlag];


//   @override
//   void initState() {
//     super.initState();
//     loadWords();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget redDivider = Divider(color: Colors.red);
//     Widget blueDivider = Divider(color: Colors.blue);
//     return Column(
//       children: <Widget>[
//         Expanded(
//           child: ListView.separated(
//             itemCount: wordsList.length,
//             separatorBuilder: (BuildContext context, int index){
//               return index % 2 == 0 ? redDivider:blueDivider;
//             },
//             itemBuilder: (BuildContext context, int index){
//               if(wordsList[index]==loadFlag){
//                 if (wordsList.length-1<100) {
//                   loadWords();
//                   return Container(
//                     padding: EdgeInsets.all(20.0),
//                     alignment: Alignment.center,
//                     child: SizedBox(
//                       width: 25.0,
//                       height: 25.0,
//                       child: CircularProgressIndicator(strokeWidth: 2.0,),
//                     ),
//                   );
//                 }else {
//                   return Container(
//                     padding: EdgeInsets.all(20.0),
//                     alignment: Alignment.center,
//                     child: Text("已全部加载完毕"),
//                   );
//                 }
//               }
//               return ListTile(
//                 title: Text(wordsList[index]),
//               );
//             },
//           ),
//         )
//       ],
//     );
//   }

//  void loadWords(){
//     Future.delayed(Duration(seconds: 2)).then((e){
//         wordsList.insertAll(wordsList.length-1, generateWordPairs().take(20).map((e)=>e.asPascalCase).toList());
//         setState(() {});
//     });
//   }
// }
