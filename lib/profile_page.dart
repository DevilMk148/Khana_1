import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:khana/HomeMenu.dart';
import 'package:khana/firebase_dbfile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
firebase_db db=new firebase_db();

class _ProfilePageState extends State<ProfilePage> {

  final ref = FirebaseDatabase.instance.ref().child('user');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Khana Restaurant"),
        // Row(
        //   children: [
        //     Container(
        //       color: Colors.black,
        //       width: 230,
        //       height: 50,
        //       alignment: Alignment.center,
        //       child: Text("Khana Restaurant"),
        //     ),
        //     Container(
        //       color: Colors.red,
        //       width: 50,
        //       height: 50,
        //       child: Icon(Icons.add),
        //     ),
        //   ],
        // ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(107, 0, 0, 1),
      ),
  body: Column(children: [
    Container(height: 600,width: 400,color: Colors.black,),
    ElevatedButton(
        onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeMenu())));
    }, child: Text('HomePage',style: TextStyle(color: Colors.white),),
      style: ButtonStyle(
          foregroundColor:
          MaterialStateProperty.all(
              Colors.black54),
          backgroundColor:
          MaterialStateProperty.all(
              Color.fromRGBO(107, 0, 0, 1)),
          shape: MaterialStateProperty.all<
              RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(20),
                side: BorderSide(
                    color: Colors.transparent),
              ))),
    )
  ],),
  // child: FirebaseAnimatedList(
  //   query: ref,
  // itemBuilder: (BuildContext context,DataSnapshot snapshot, Animation<double> animation, int index){
  //
  //     Map user = snapshot.value as Map;
  //     user['key']=snapshot.key;
  // }),
    );

  }
}
