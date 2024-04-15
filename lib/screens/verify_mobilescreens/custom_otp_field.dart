// import 'package:flutter/material.dart';
//
// class CustomTextField extends StatelessWidget {
//   String value;
//   CustomTextField(this.value, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: AnimatedContainer(
//         height: 60,
//         width: 60,
//         alignment: Alignment.center,
//         duration: Duration(microseconds: 650),
//         decoration: BoxDecoration(
//           border: Border.all(
//               color: value.isNotEmpty ? Colors.transparent : Colors.red,
//               width: 3),
//           borderRadius: BorderRadius.circular(50),
//           color: value.isEmpty ? Colors.white : Color(0xfff3fdf8),
//         ),
//         child: Text(
//           value.isEmpty ? '\u{002A}' : value,
//           style: TextStyle(fontSize: 30),
//           //style: style.copyWith(fontSize : 30),
//         ),
//       ),
//     );
//   }
// }
