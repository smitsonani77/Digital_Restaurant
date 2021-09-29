import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      color: Colors.white, //Color(0xFFEAEAEA), //s
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButton(),
                  // Text(
                  //   "",S
                  //   style: Theme.of(context).textTheme.caption,
                  // ),
                  Text(
                    "Menu",
                    style: TextStyle(fontSize: 25, color: Colors.black87),
                    // style: Theme.of(context)
                    //     .textTheme
                    //     .subtitle1!
                    //     .copyWith(color: Colors.black87),
                  )
                ],
              ),
            ],
          ),
          // CircleAvatar(
          //   backgroundColor: Colors.transparent,
          //   backgroundImage: AssetImage("assets/images/profile.png"),
          // )
        ],
      ),
    );
  }
}
