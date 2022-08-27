import 'package:dejuretask/screens/helo.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override

  Widget build(BuildContext context) {

    final _isLand=MediaQuery.of(context).orientation==Orientation.landscape;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(77.0),
        child: AppBar(

          leading: const Icon(Icons.menu),
          title: const Center(child: Text("Practice")),
          actions: const [
            Icon(Icons.notifications),
          ],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(75.0))),
        ),
      ),
      body:  _portraitMode(context),
    );
  }
}



Widget _portraitMode(BuildContext context){
  return LayoutBuilder(builder: (ctx,constraints){
    final CameraPosition _initial= CameraPosition(
      target: LatLng(3.661446, 26.626654),);
    return  Column(
      children: [
        SizedBox(height: constraints.maxHeight*0.05),
        Container(
          height: constraints.maxHeight*0.40,
          child: GoogleMap(initialCameraPosition: _initial,
            mapType: MapType.normal,
          ),
        ),
        SizedBox(height:constraints.maxHeight*0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BoxDec(context,constraints.maxWidth*0.40,constraints.maxHeight*0.10),
            BoxDec(context,constraints.maxWidth*0.40,constraints.maxHeight*0.10),
          ],
        )
      ],
    );
  });
}

Widget BoxDec(BuildContext context,double size,double height){
  return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      width: size,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/splash.png'),
          const Text('HdHd'),
          SizedBox(height: height,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> const HeloChat())),
                child: const Icon(Icons.ten_k_rounded),
              )
            ],
          ),
        ],
      )

  );
}