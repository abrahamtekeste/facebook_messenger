import 'package:flutter/material.dart';

class TabSelector extends StatefulWidget {
  @override
  _TabSelectorState createState() => _TabSelectorState();
}

class _TabSelectorState extends State<TabSelector> {
  int selectedIndex = 0;
  List<String> tabs = ['Messages', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  tabs[index],
                  style: TextStyle(
                      color: selectedIndex == index
                          ? Colors.white
                          : Colors.white60,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              });
        },
      ),
    );
  }
}
