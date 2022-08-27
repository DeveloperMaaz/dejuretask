import 'package:dejuretask/screens/chat.dart';
import 'package:flutter/material.dart';

class HeloChat extends StatefulWidget {
  const HeloChat({Key? key}) : super(key: key);

  @override
  _HeloChatState createState() => _HeloChatState();
}

class _HeloChatState extends State<HeloChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Center(child: Text("Message",style: TextStyle(color: Colors.white),),
      ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom:Radius.circular(80.0) )),
    ),
      body: Column(children: [
        const SizedBox(height: 30.0,),
        Row(
          children: const [
            SizedBox(width: 20.0,),
          Icon(Icons.threesixty),
        ],),
        const SizedBox(height: 30.0,),
        InkWell(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const Chat())),
            child: tile()),
      InkWell(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const Chat())),
          child: tile()),
      ],),
    );
  }
}

Widget tile(){
  return const Padding(
    padding: EdgeInsets.only(top: 10.0,right: 20.0,left: 20.0
    ),
    child: Card(
      child: ListTile(
        title: Text("Husnain"),
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/MAAZ.jpeg"),
        ),
        trailing: Text('31.01.2022',style: TextStyle(fontSize: 8.0),),
        subtitle: Text("hello"),
      ),),
  );
}