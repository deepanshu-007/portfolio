import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  myachieve( num , name){
    return Row(children: [
      Text(num,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
      Container(
        margin: EdgeInsets.only(top: 5),
        child:
        Text(name,style:TextStyle(fontSize: 15),),
      )
    ],);
  }
  mySpec(icon,tech){
    return  Container(
      width: 100,
      height: 100,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,color: Colors.white,),
              Text(tech,style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        leading:PopupMenuButton(
          icon: Icon(Icons.menu,color: Colors.white,size: 30,),
          color: Colors.black,
          itemBuilder: (context)=>[
            PopupMenuItem(child: TextButton(
              child: Text("About",style: TextStyle(
                color: Colors.white70
              ),),
              onPressed: (){
                Navigator.pushNamed(context, 'about');
              },
            ),
            value: 1,),
            PopupMenuItem(child: TextButton(
              child: Text("Education",style: TextStyle(color: Colors.white70),),
              onPressed: (){Navigator.pushNamed(context, 'education_details');},
            ),
            value: 2,),
            PopupMenuItem(child: TextButton(
    child: Text("Projects",style: TextStyle(
    color: Colors.white70
    ),),
    onPressed: (){
    Navigator.pushNamed(context, 'projects');
    },
    ),
                     value: 3,)
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 30,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(child: Stack(
            children: [
        Container(
        margin: EdgeInsets.only(top: 50,left: 65),
          child: ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent],
              ).createShader(
                  Rect.fromLTRB(0, 0, rect.width, rect.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset('assets/img6.png' , height: 400,
            ),
          ),
        ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.47),
                child: Column(
                  children: [
                    Text("Deepanshu Rana",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold)),
                    SizedBox(height: 5,),
                    Text("Software Developer",style: TextStyle(color: Colors.white,fontSize: 25,)),
                    SizedBox(height: 8,),
                    Text("deepanshurana1616@gmail.com",style: TextStyle(color: Colors.white,fontSize: 12),),
                  ],
                ),
              )
        ],
        ),
        ),

        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20,top: 25,right: 20),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myachieve('10', 'Projects' ),
                    myachieve('5',  'Workshops' ),
                    myachieve('3', 'Bootcamps' ),
                  ],
                ),
                SizedBox(height: 25,),
                Text("Specialized In",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       mySpec(Icons.android, 'Android'),
                        mySpec(Icons.code, 'C/C++'),
                        mySpec(Icons.data_object, 'Java'),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.data_array, 'DSA'),
                        mySpec(Icons.cable, 'Arduino Uno'),
                        mySpec(FontAwesomeIcons.github, 'Git/Github'),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.android, 'Android'),
                        mySpec(Icons.android, 'Android'),
                        mySpec(Icons.android, 'Android'),
                      ],
                    ),

                  ],
                )
              ],


            )
          );
        },
      ),
    );
  }
}
