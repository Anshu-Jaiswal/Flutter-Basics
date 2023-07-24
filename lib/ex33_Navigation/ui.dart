import 'package:flutter/material.dart';
import 'package:flutter_basic/ex33_Navigation/fetch_data.dart';
import 'package:flutter_basic/ex33_Navigation/user.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: FutureBuilder<List<User>>(
        future: getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:

            case ConnectionState.waiting:

            case ConnectionState.active:
              return CircularProgressIndicator();

            case ConnectionState.done:
              if (snapshot.hasError || !snapshot.hasData) {
                return Text("Some Error!!");
              } else {
                return _UserListView(snapshot.requireData);
              }
          }
        },
      ),
    );
  }
}

class _UserListView extends StatelessWidget {
  const _UserListView(this.users, {Key? key}) : super(key: key);
  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          var user = users[index];
          return ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => _UserDetailPage(user)));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(user.id.toString()),
                  Icon(
                    Icons.accessibility_sharp,
                    color: Colors.white,
                  ),
                  Text(user.username),
                ],
              ));
        },
        separatorBuilder: (context, index) => Divider(
              thickness: 2,
              color: Colors.blueGrey.shade100,
            ),
        itemCount: users.length);
  }
}

class _UserDetailPage extends StatelessWidget {
  const _UserDetailPage(this.u, {Key? key}) : super(key: key);
  final User u;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network("https://learnwebcode.github.io/json-example/images/cat-2.jpg", width: 64, height: 64),
            _TextWidget(k: "Name", v: u.name),
            _TextWidget(k: "Phone", v: u.phone),
            _TextWidget(k: "Email", v: u.email),
            _TextWidget(k: "Company Name", v: u.company.name),
          ],
        ),
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({Key? key, required this.k, required this.v}) : super(key: key);

  final String k, v;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          k,
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        ),
        Text(
          v,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
