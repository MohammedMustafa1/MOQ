import 'package:flutter/material.dart';
import 'package:message_of_quran/mainpages/Home.dart';
import 'package:message_of_quran/mainpages/profilebody.dart';
import 'package:message_of_quran/utility/routes.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("PROFILE"),
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
      body: profilebody(),
      bottomNavigationBar: commonbottomnavbar(),
      floatingActionButton: commonfloatbutton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
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
