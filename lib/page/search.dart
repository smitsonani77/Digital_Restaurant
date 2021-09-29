import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:myapp/page/data/data_model.dart';
import 'package:myapp/page/itemData.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'item_detail.dart';
import 'ProductData.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  List food_data = FOOD_DATA;
  // List<ProductData> product = <ProductData>[];
  // List<ProductData> product_detail = <ProductData>[];
  Future<List<ProductData>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('page/itemData.dart');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => ProductData.fromJson(e)).toList();
  }

  Widget build(BuildContext context) {
    Icon customIcon = const Icon(Icons.search);
    Widget customSearchBar = const Text('Trending List of Items');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.cyan,
        actions: <Widget>[],
        title: customSearchBar,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SearchWidget(),
              /*SizedBox(
                  height: 40,
                  width: 700,
                  child: DecoratedBox(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Search bar ...',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        // color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.grey, width: 2)),
                  )
                ),*/
              /*CupertinoSearchTextField(
                onChanged: (value) {},
                itemColor: Colors.blueGrey,
                itemSize: 24,
                borderRadius: BorderRadius.circular(10),
                backgroundColor: Colors.blue[100],
                padding: EdgeInsets.all(12),
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),*/

              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 700,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: food_data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return index == 0
                          ? _SearchBar(index)
                          : _listItem(index - 1);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _listItem(int index) {
    return InkWell(
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ItemDetailsPage(
                      user: index,
                    ))),

        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => AlertDialog(
        //               backgroundColor: Colors.lightBlue,
        //               elevation: 24,
        //               scrollable: true,
        //               title: Text(
        //                 'Add Item',
        //                 style: TextStyle(
        //                   color: Colors.white,
        //                   fontSize: 14,
        //                 ),
        //               ),
        //               actions: [
        //                 CupertinoDialogAction(
        //                   // onPressed: ,
        //                   child: Text(
        //                     'YES',
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontSize: 14,
        //                     ),
        //                   ),
        //                 ),
        //                 CupertinoDialogAction(
        //                   //  onPressed: ,
        //                   child: Text(
        //                     'NO',
        //                     style: TextStyle(color: Colors.white, fontSize: 14),
        //                   ),
        //                 ),
        //               ],
        //             ))),
      },
      child: Card(
        margin: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        color: Colors.white,
        elevation: 0.5,
        shadowColor: Colors.grey.shade900,
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            width: 50,
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${food_data[index]['image']}",
                ),
              ),
              // border:
              //     Border.all(width: 1, color: Colors.black)
            ),
          ),
          trailing: Text(
            "₹${food_data[index]['price']}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          title: Text(
            "${food_data[index]['name']}",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                letterSpacing: 2),
          ),
        ),
      ),
    );
  }

  _SearchBar(index) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search here...',
          contentPadding: EdgeInsets.all(15.0),
        ),
        onChanged: (searchText) {
          // searchText = searchText.toLowerCase();
          // setState(() {
          //   product_detail = product.where((u) {
          //     var name = u.name!.toLowerCase();
          //     var brand = u.brand!.toLowerCase();
          //     return name.contains(searchText) || brand.contains(searchText);
          //   }).toList();
          // });
        },
        onTap: () => {},
      ),
    );
  }
}

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: TextField(
        cursorHeight: 20,
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: Colors.grey),
          border: InputBorder.none,
        ),
        // onChanged: widget.onChanged,
      ),
    );
  }
}

/*class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // action for app bar
    return [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.clear),
      )
    ];
    // throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading item on left of the app bar
    return IconButton(
      onPressed: () {},
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
    );
    // throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    //show result based on the selection
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for anything

    throw UnimplementedError();
  }
}*/
