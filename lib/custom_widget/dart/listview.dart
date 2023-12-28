// import 'package:flutter/material.dart';
// class Table1_widget extends StatefulWidget {
//   const Table1_widget({super.key,required this.data});
//   final data;
//
//   @override
//   State<Table1_widget> createState() => _Table1_widgetState();
// }
//
// class _Table1_widgetState extends State<Table1_widget> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Table(
//       border: TableBorder.all(),
//       children: [
//         TableRow(children: [Text("Details"), Text("Dealer")]),
//         TableRow(children: [
//           Text(),
//           Column(
//             children: [
//               Row(
//                 children: [
//                   Text("Collection Data PKR "),
//                   Spacer(),
//                   Text(
//                       "${api11.colTrgtPkr.toString().split(".")[0].substring(0, 7)}")
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text("Achive Plan PKR"),
//                   Text("data")
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text("Target MTN"),
//                   Spacer(),
//                   Text("${api11.salesTrgtMtn}")
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text("Acheive MTN"),
//                   Text("data"),
//                 ],
//               )
//             ],
//           )
//         ]),
//       ],
//     );
//   }
// }
