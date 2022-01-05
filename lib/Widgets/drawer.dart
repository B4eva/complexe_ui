import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Flutter 237',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            MyList(text: 'News', myIcon: Icons.verified),
            MyList(text: 'favourites', myIcon: Icons.star_border_rounded),
            MyList(text: 'Map', myIcon: Icons.map_outlined),
            MyList(text: 'Profile', myIcon: Icons.person)
            // Expanded(
            //   child: ListView.builder(itemBuilder: (context, index) {
            //     return MyList(
            //         text: _list[index].text, myIcon: _list[index].myIcon);
            //   }),
            // )
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({
    Key? key,
    required this.text,
    required this.myIcon,
  }) : super(key: key);
  final String? text;
  final IconData myIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        myIcon,
        color: Colors.white,
      ),
      title: Text(
        text!,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

List<MyList> _list = [
  const MyList(text: 'News', myIcon: Icons.verified),
  const MyList(text: 'favourites', myIcon: Icons.star_border_rounded),
  const MyList(text: 'Map', myIcon: Icons.map_outlined),
  const MyList(text: 'Profile', myIcon: Icons.person)
];
