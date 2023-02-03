import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/searchPage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool switchValue = false;
  bool switchValue1 = false;
  String regionValue = "Toshkent";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height:25),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context,);
                        // MaterialPageRoute(builder: (context) => SearchPage()),
                        //     (route) => false);
                  },
                  icon: const Icon(
                    Icons.turn_left_outlined, color: Colors.black, size: 35,)
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Explore Settings",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700)),
                  SizedBox(height: 3),
                  Text("@Bahrom888",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w300)),
                ],
              )
            ],
          ),
          Divider(thickness: 1, color: Colors.grey.shade400,),
          SizedBox(height: 20,),
          Text("Location",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Show content in this location", style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500)),
                  SizedBox(height: 5),
                  Text("When this is on,you'll see what's happening",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 3),
                  Text("around you right now",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Switch(value: switchValue,
                  onChanged: (val) {
                    switchValue = val;
                    setState(() {});
                  }
              )
            ],
          ),
          SizedBox(height: 10,),
          Divider(thickness: 1, color: Colors.grey.shade300),
          SizedBox(height: 10,),
          Text("Personalization",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Trends for you", style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500)),
                  SizedBox(height: 5),
                  Text("You can personalize the trends for you based",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 3),
                  Text("on your location and who you follow",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Switch(value: switchValue1,
                  onChanged: (val) {
                    switchValue1 = val;
                    setState(() {});
                  }
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                  hint: Text("Select your Region"),
                  items: <String>[
                    "Tashkent",
                    "Samarqand",
                    "Buxoro",
                    "Farg'ona",
                    "Namangan",
                    "Qashqadaryo"
                  ].map<DropdownMenuItem<String>>
                    ((String value) {
                    return DropdownMenuItem <String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    regionValue = newValue!;
                    setState(() {});
                    print("New value selected: $newValue");
                  }
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                          ),
                          child: Center(
                              child: Column(
                                children: [
                                  Text("This is a bottom sheet"),
                                  SizedBox(height: 10,),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Pop")
                                  )
                                ],
                              )
                          )
                      );
                    });
              },
              child: Text("Show BottomSheet")),
          SizedBox(height: 10),
          PopupMenuButton(
            // onSelected: (value){
            //   if(value== "Delete") {
            //     print("Succesfully deleted");
            //   }
            //   else{print("Please Edit");}
            // },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          PopupMenuItem(
          value: "Delete",
              child: InkWell(
                onTap: () {
                  print("Succesfully deleted with Inkwell");
                },
                child: Text("Delete")
              )
          ),
                PopupMenuItem(
                  value: "Edit",
                  child: Text("Edit"),
                )
          ]
      )
      ],
    )));
  }
}
