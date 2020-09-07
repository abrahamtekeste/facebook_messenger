import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lsan/models/message_model.dart';

class OnlineFirends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 120,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return GestureDetector(
                    onTap: () {
                      print('Camera clicked');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[100],
                            child: Icon(
                              Icons.video_call,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 24),
                        ],
                      ),
                    ),
                  );
                }
                return GestureDetector(
                  onTap: () {
                    print(favorites[index].name);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: CachedNetworkImageProvider(
                              favorites[index].imageUrl),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          favorites[index].name,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'BalsamiqSans',
                              fontStyle: FontStyle.italic,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
