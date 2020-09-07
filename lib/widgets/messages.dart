import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lsan/models/message_model.dart';

class Messages extends StatelessWidget {
  // final int chatIndex;
  final Message message;

  const Messages({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage:
                  CachedNetworkImageProvider(message.sender.imageUrl),
            ),
            SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.sender.name,
                  style: TextStyle(fontSize: 16, fontFamily: 'BalsamiqSans'),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Text(
                        message.text,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(message.time),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// return Container(
//   child: Row(
//     children: [
//       Column(
//         children: [
//           CircleAvatar(
//             radius: 30,
//             backgroundImage: CachedNetworkImageProvider(
//                 chats[chatIndex].sender.imageUrl),
//           ),
//         ],
//       ),
//       SizedBox(width: 8),
//       Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             chats[chatIndex].sender.name,
//             style: TextStyle(fontSize: 16, fontFamily: 'BalsamiqSans'),
//           ),
//           SizedBox(height: 5),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 // color: Colors.blue,
//                 width: MediaQuery.of(context).size.width * 0.45,
//                 child: Text(
//                   chats[chatIndex].text,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//               Text(chats[chatIndex].time),
//             ],
//           ),
//         ],
//       ),
//     ],
//   ),
// );

// Expanded(
//       child: ListView.builder(
//         itemCount: chats.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundImage: CachedNetworkImageProvider(
//                           chats[index].sender.imageUrl),
//                     ),
//                   ],
//                 ),
//                 SizedBox(width: 8),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       chats[index].sender.name,
//                       style:
//                           TextStyle(fontSize: 16, fontFamily: 'BalsamiqSans'),
//                     ),
//                     SizedBox(height: 5),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Container(
//                           // color: Colors.blue,
//                           width: MediaQuery.of(context).size.width * 0.45,
//                           child: Text(
//                             chats[index].text,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                         Text(chats[index].time),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
