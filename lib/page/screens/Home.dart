import 'package:flutter/material.dart';
import 'package:myapp/page/data/data_model.dart';
import 'package:myapp/page/domain/repository.dart';
import 'package:myapp/page/component/loading_widget.dart';
import 'package:myapp/page/component/user_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> _users = <Item>[];
  List<Item> _usersDisplay = <Item>[];

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchUsers().then((value) {
      setState(() {
        _isLoading = true;
        _users.addAll(value);
        _usersDisplay = _users;
        //print(_usersDisplay.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Items'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              if (!_isLoading) {
                return index == 0
                    ? _searchBar()
                    : UserTile(user: this._usersDisplay[index - 1]);
              } else {
                return LoadingView();
              }
            },
            itemCount: _usersDisplay.length + 1,
          ),
        ),
      ),
    );
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: TextField(
        autofocus: false,
        onChanged: (searchText) {
          searchText = searchText.toLowerCase();
          setState(() {
            _usersDisplay = _users.where((u) {
              var name = u.name.toLowerCase();
              var brand = u.brand.toLowerCase();
              return name.contains(searchText) || brand.contains(searchText);
            }).toList();
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search Items ...',
        ),
      ),
    );
  }
}
