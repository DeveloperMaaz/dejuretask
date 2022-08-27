import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          title: Center(child:  Text("Husnain")),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom:Radius.circular(80.0) )),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.fifteen_mp_rounded),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Container(
                decoration: BoxDecoration(color: Colors.green),
                child: const Text("Heloooo"),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical:8.0 ),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: SafeArea(
                child: Row(children: [
                  const Icon(Icons.ten_k,color: Colors.green,),
                  const SizedBox(width: 6,),
                  Expanded(child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Text",
                    ),
                  )),
                  const Icon(Icons.thirteen_mp_sharp,color: Colors.black,),
                  const Icon(Icons.ten_k,color: Colors.black54,),
                ],),
              ),
            ),
          )
        ],
      ),
    );
  }
}