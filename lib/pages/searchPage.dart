import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/settingsPage.dart';

import '../items/searchItems.dart';
import '../states(attributes).dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25,),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/i (10).webp"),
                    ),
                     SizedBox(width: 20),
                     SizedBox(
                       width:270,
                       child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade300,
                            hintText: "Search Twitter",
                          contentPadding: EdgeInsets.only(left: 15),
                          // hintStyle: pad
                        ),
                    ),
                     ),
                    IconButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>  SettingsPage()),
                          );
                        },
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 30,
                        )
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2,color: Colors.grey.shade300,),
              SizedBox(height: 10,),
              Text("Trends for you",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w700),),

              ListView.builder(
                  itemCount: searchLists.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return searchItem(context,searchLists[index]);
                  }),
              SizedBox(height:20),
              Text("Show more",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w500)),
              Divider(thickness: 2,color: Colors.grey.shade300,),
              SizedBox(height:10),
              Text("Videos for you",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w700)),
              SizedBox(height:10),
              Text("Check out these popular and trending videos for you",
                  style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500)),
            ],
          ),
      ),
    )

    );
  }
}
