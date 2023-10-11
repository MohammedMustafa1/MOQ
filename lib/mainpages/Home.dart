import 'package:flutter/material.dart';
import 'package:message_of_quran/mainpages/homebody.dart';
import 'package:message_of_quran/utility/routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("HOME"),
        backgroundColor: Color(0xFF4CB151),
        actions: [
          IconButton(
              onPressed:(){
                showSearch(
                    context: context,
                    delegate: MySearchDelegate()
                );
              },
              icon: const Icon(Icons.search,size: 35,)
          ),
          Image.asset("images/home/compass.png",scale: 2.75,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.pushNamed(context, MyRoutes.menuroute);
              });
            },
            child: Icon(Icons.more_vert_rounded,size: 40,),
          ),
        ],
      ),
      body: homebody(),
      bottomNavigationBar: commonbottomnavbar(),
      floatingActionButton: commonfloatbutton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

class commonfloatbutton extends StatelessWidget {
  const commonfloatbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1,//change action button size
      child: FloatingActionButton(
        child: Icon(Icons.add_circle_outline,size: 35,),
        backgroundColor: Color(0xFF4CB151),
        onPressed: (){},
      ),
    );
  }
}

class commonbottomnavbar extends StatefulWidget {
   commonbottomnavbar({
    Key? key,
  }) : super(key: key);

  @override
  State<commonbottomnavbar> createState() => _commonbottomnavbarState();
}

class _commonbottomnavbarState extends State<commonbottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(//to curve the edges of bottom navebar
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:
          InkWell(
            onTap: (){Navigator.pushNamed(context, MyRoutes.homeroute);},
              child: Icon(Icons.home)),
              label: "Home"
          ),
          BottomNavigationBarItem(icon: Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.play_circle_outline_rounded),
          ),label: "Spiritual Count"),
          BottomNavigationBarItem(icon: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(Icons.laptop),
          ),label: "Understand"),
          BottomNavigationBarItem(icon:
          InkWell(
            onTap: (){Navigator.pushNamed(context, MyRoutes.profileroute);},
              child: Icon(Icons.person_pin)),
              label: "Profile"
          ),
        ],
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        showUnselectedLabels: true,
        backgroundColor: Color(0xFF4CB151),
      ),
    );
  }
}

//Working of search button
class MySearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context)=> [
  IconButton(
  onPressed: (){
    if(query.isEmpty){
      close(context,null);
    }else{
      query='';
    }
  },
  icon: const Icon(Icons.clear)
  ),
  ];

  @override
  Widget buildResults(BuildContext context)=>Container();

  @override
  Widget buildSuggestions(BuildContext context)=>Container();

  @override
  Widget? buildLeading(BuildContext context)=>IconButton(
      onPressed: ()=>close(context,null),
      icon: const Icon(Icons.arrow_back)
  );
}
