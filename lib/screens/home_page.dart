import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lsan/models/message_model.dart';
import 'package:lsan/widgets/search_button.dart';
import 'package:lsan/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TrackingScrollController _scrollController = TrackingScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            // expandedHeight: 82,
            elevation: 1,
            leading: Flexible(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        CachedNetworkImageProvider(currentUser.imageUrl),
                  ),
                ),
              ),
            ),
            title: Text(
              "Chats",
              style: TextStyle(
                  fontSize: 26.0,
                  fontFamily: 'BalsamiqSans',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                  color: Colors.black87),
            ),
            floating: true,
            pinned: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey[100],
                  child: IconButton(
                      icon: Icon(Icons.camera_alt),
                      color: Colors.black,
                      iconSize: 20.0,
                      onPressed: () {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey[100],
                  child: IconButton(
                      icon: Icon(Icons.edit),
                      color: Colors.black,
                      iconSize: 20.0,
                      onPressed: () {}),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
            sliver: SliverToBoxAdapter(
              child: SearchButton(),
            ),
          ),
          SliverToBoxAdapter(child: OnlineFirends()),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final chat = chats[index];
                return Messages(message: chat);
              },
              childCount: chats.length,
            ),
          ),
        ],
      ),
    );
  }
}
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor,
//       appBar: AppBar(
//         elevation: 0.0,
//         shadowColor: Colors.white,
//         leading: CircleAvatar(
//           backgroundImage: CachedNetworkImageProvider(currentUser.imageUrl),
//         ),
//         title: Text(
//           "Chats",
//           style: TextStyle(
//               fontSize: 26.0,
//               fontFamily: 'BalsamiqSans',
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.w600,
//               letterSpacing: 1.0,
//               color: Colors.black87),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 10.0),
//             child: CircleAvatar(
//               radius: 22,
//               backgroundColor: Colors.grey[100],
//               child: IconButton(
//                   icon: Icon(Icons.camera_alt),
//                   color: Colors.black,
//                   iconSize: 20.0,
//                   onPressed: () {}),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 10.0),
//             child: CircleAvatar(
//               radius: 22,
//               backgroundColor: Colors.grey[100],
//               child: IconButton(
//                   icon: Icon(Icons.edit),
//                   color: Colors.black,
//                   iconSize: 20.0,
//                   onPressed: () {}),
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           SearchButton(),
//           OnlineFirends(),
//           Messages(),
//         ],
//       ),
//     );
//   }
// }
