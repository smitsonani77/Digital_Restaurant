import 'package:flutter/material.dart';
import 'package:myapp/page/data/data_model.dart';
import 'package:myapp/page/screens/user_detail_page.dart';

class UserTile extends StatelessWidget {
  final Item user;

  UserTile({required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 75,
              height: 75,
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/${user.image}",
                  ),
                ),
                // border:
                //     Border.all(width: 1, color: Colors.black)
              ),
            ),
            trailing: Text(
              "₹${user.price}",
              style: TextStyle(color: Colors.green, fontSize: 15),
            ),
            title: Text(
              "${user.name}",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserDetailsPage(user: user)));
            },
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
