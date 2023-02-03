import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/searchModel.dart';

Widget searchItem(BuildContext context, SearchModel search) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(search.trending,style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w800)),
              SizedBox(height:5),
              Text(search.theme,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700)),
              SizedBox(height:5),
              Text(search.tweetsNumber,style: TextStyle(color: Colors.grey,fontSize: 15,)),
            ],
          ),
          Icon(Icons.more_horiz,color: Colors.grey)
        ],
      ),
      SizedBox(height:20),
    ],
  );
}
