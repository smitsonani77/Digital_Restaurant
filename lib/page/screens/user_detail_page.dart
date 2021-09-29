import 'package:flutter/material.dart';
import 'package:myapp/page/data/data_model.dart';
import 'package:url_launcher/url_launcher.dart';

class UserDetailsPage extends StatelessWidget {
  final Item user;

  UserDetailsPage({required this.user});

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          '${user.name}',
          style: TextStyle(
            fontSize: 20,
            backgroundColor: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: Hero(
                tag: user.id,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(user.image),
                  radius: 100.0,
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(
              '${user.name} ${user.brand}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 12.0,
            ),

            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Text(
                //   '${user.email}',
                //   style: TextStyle(
                //     fontSize: 16.0,
                //     fontWeight: FontWeight.w300,
                //   ),
                //   textAlign: TextAlign.left,
                // ),
                // FlatButton(
                //   onPressed: () {
                //     customLaunch(
                //         'mailto:${user.email}?subject=Contact%20Information&body=Type%20your%20mail%20here');
                //   },
                //   child: Icon(
                //     Icons.email,
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            // Expanded(
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.vertical,
            //     child: Padding(
            //       padding: const EdgeInsets.only(
            //           left: 12.0, right: 12.0, bottom: 20.0),
            //       child: Text(
            //         user.profile,
            //         textAlign: TextAlign.justify,
            //         style: TextStyle(
            //           fontSize: 16.0,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
