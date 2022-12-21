import 'package:doan_ltdd/provider/friends.dart';
import 'package:flutter/material.dart';

class FriendsTest extends StatefulWidget {
  const FriendsTest({super.key, required this.title});
  final String title;
  @override
  State<FriendsTest> createState() => _FriendsTestState();
}

class _FriendsTestState extends State<FriendsTest> {
  Friends friendsService = Friends();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: FutureBuilder<List>(
            future: friendsService.getAllFriends(),
            builder: (context, snapshot) {
              print(snapshot.data);
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Container(
                      child: Card(
                        child: ListTile(
                          title: Text(
                            snapshot.data![3]['name'],
                            style: TextStyle(fontSize: 30.0),
                          ),
                          subtitle: Text(
                            snapshot.data![3]['email'].toString(),
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: ListTile(
                          title: Text(
                            snapshot.data![4]['name'],
                            style: TextStyle(fontSize: 30.0),
                          ),
                          subtitle: Text(
                            snapshot.data![4]['email'].toString(),
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: Text('No Data Found'),
                );
              }
            },
          ),
        ));
  }
}
