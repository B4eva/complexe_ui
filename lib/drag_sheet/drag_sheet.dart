import 'package:flutter/material.dart';

// This example demonstrates paralax effect actually.. A listview
// and stacked widget

class DragSheet extends StatefulWidget {
  const DragSheet({Key? key}) : super(key: key);

  @override
  _DragSheetState createState() => _DragSheetState();
}

class _DragSheetState extends State<DragSheet> {
  ScrollController? _scrollController;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double offset = 10;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: -0.3 * offset,
                child: Container(
                  height: 20,
                  width: 20,
                  color: Colors.green,
                )),
            Positioned(
                top: screenHeight * 0.45 - 0.6 * offset,
                child: Container(
                  height: 20,
                  width: 20,
                  color: Colors.red,
                )),
            Positioned(
                top: screenHeight * 0.7 - 1 * offset,
                child: Container(
                  height: 20,
                  width: 20,
                  color: Colors.yellow,
                )),
            ListView(
              controller: _scrollController,
              children: <Widget>[
                Container(
                  height: screenHeight,
                ),
                const ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Fuck'),
                  trailing: Text('B4eva'),
                ),
                const ListTile(
                  leading: Icon(Icons.dangerous),
                  title: Text('Cool bro'),
                  trailing: Text('hans'),
                ),
                const ListTile(
                  leading: Icon(Icons.wallet_membership),
                  title: Text('dump'),
                  trailing: Text('mark'),
                ),
                const ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Fuck'),
                  trailing: Text('B4eva'),
                ),
                const ListTile(
                  leading: Icon(Icons.dangerous),
                  title: Text('Cool bro'),
                  trailing: Text('hans'),
                ),
                const ListTile(
                  leading: Icon(Icons.wallet_membership),
                  title: Text('dump'),
                  trailing: Text('mark'),
                ),
                const ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Fuck'),
                  trailing: Text('B4eva'),
                ),
                const ListTile(
                  leading: Icon(Icons.dangerous),
                  title: Text('Cool bro'),
                  trailing: Text('hans'),
                ),
                const ListTile(
                  leading: Icon(Icons.wallet_membership),
                  title: Text('dump'),
                  trailing: Text('mark'),
                ),
                const ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Fuck'),
                  trailing: Text('B4eva'),
                ),
                const ListTile(
                  leading: Icon(Icons.dangerous),
                  title: Text('Cool bro'),
                  trailing: Text('hans'),
                ),
                const ListTile(
                  leading: Icon(Icons.wallet_membership),
                  title: Text('dump'),
                  trailing: Text('mark'),
                ),
                const ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Fuck'),
                  trailing: Text('B4eva'),
                ),
                const ListTile(
                  leading: Icon(Icons.dangerous),
                  title: Text('Cool bro'),
                  trailing: Text('hans'),
                ),
                const ListTile(
                  leading: Icon(Icons.wallet_membership),
                  title: Text('dump'),
                  trailing: Text('mark'),
                ),
                const ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Fuck'),
                  trailing: Text('B4eva'),
                ),
                const ListTile(
                  leading: Icon(Icons.dangerous),
                  title: Text('Cool bro'),
                  trailing: Text('hans'),
                ),
                const ListTile(
                  leading: Icon(Icons.wallet_membership),
                  title: Text('dump'),
                  trailing: Text('mark'),
                ),
                const ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Fuck'),
                  trailing: Text('B4eva'),
                ),
                const ListTile(
                  leading: Icon(Icons.dangerous),
                  title: Text('Cool bro'),
                  trailing: Text('hans'),
                ),
                const ListTile(
                  leading: Icon(Icons.wallet_membership),
                  title: Text('dump'),
                  trailing: Text('mark'),
                ),
                const ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Fuck'),
                  trailing: Text('B4eva'),
                ),
                const ListTile(
                  leading: Icon(Icons.dangerous),
                  title: Text('Cool bro'),
                  trailing: Text('hans'),
                ),
                const ListTile(
                  leading: Icon(Icons.wallet_membership),
                  title: Text('dump'),
                  trailing: Text('mark'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
