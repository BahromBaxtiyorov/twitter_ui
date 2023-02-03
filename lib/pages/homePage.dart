import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../items/postItem.dart';
import '../states(attributes).dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
            padding: EdgeInsets.all(10),
            height: 20,
            width: 20,
            child: CircleAvatar(
              radius: 5,
              backgroundImage: AssetImage("assets/images/png-twitter-3.png"),
            )
        ),
        title: Image.asset(
          "assets/images/png-twitter-3.png",
          height: 50,
        ),
        centerTitle: true,
        actions: [
          SvgPicture.asset("assets/icons/action.svg"),
          SizedBox(width:21)
        ],
      ),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context,index){
            return postTweet(context,posts[index]);
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: SvgPicture.asset("assets/icons/add.svg"),
      ),
    );
  }
}
