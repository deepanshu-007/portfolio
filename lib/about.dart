import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class myAbout extends StatefulWidget {
  const myAbout({Key? key}) : super(key: key);

  @override
  State<myAbout> createState() => _myAboutState();
}

class _myAboutState extends State<myAbout> {


  Future<void> _launchUrl(String link) async {
    final Uri _url = Uri.parse(link);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:  Container(child: Stack(
      children: [
      Container(
      margin: EdgeInsets.only(top: 80,left: 65),
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
      child: Image.asset('assets/img3.png' , height: 400,
      ),
      ),
      ),
      Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.55),
    child: Column(
    children: [
      SizedBox(height: 10,),
      Text("Hello I am " , style: TextStyle(color: Colors.white,fontSize: 25,)),
      SizedBox(height: 10,),
    Text("Deepanshu Rana",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold)),
    SizedBox(height: 10,),
    Text("Software Developer",style: TextStyle(color: Colors.white,fontSize: 25,)),
      SizedBox(height: 20,),
      SizedBox(
        width: 120,
        child: TextButton(
          onPressed: (){
            _launchUrl('https://www.linkedin.com/in/deepanshu-rana-1a021b243/');
          },child: Text('Hire me'),style: TextButton.styleFrom(
            backgroundColor: Colors.white,foregroundColor: Colors.black
        ),
        ),
      ),
      SizedBox(height: 25,),
      Text("Connect with me",style: TextStyle(color: Colors.white,fontSize: 20),),
      SizedBox(height: 25,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){
             _launchUrl('https://www.instagram.com/cdt.deepanshu.19/');
          }, icon: Icon(FontAwesomeIcons.instagram,color: Colors.white,size: 35,)),
          SizedBox(width: 5,),
          IconButton(onPressed: (){
            _launchUrl('https://github.com/deepanshu-007');
          }, icon: Icon(FontAwesomeIcons.github,color: Colors.white,size: 35,)),
          SizedBox(width: 5,),
          IconButton(onPressed: (){
            _launchUrl('https://twitter.com/Deepans95096172');
          }, icon: Icon(FontAwesomeIcons.twitter,color: Colors.white,size: 35,)),
          SizedBox(width: 5,),
          IconButton(onPressed: (){
            _launchUrl('https://www.linkedin.com/in/deepanshu-rana-1a021b243/');
          }, icon: Icon(FontAwesomeIcons.linkedin,color: Colors.white,size: 35,)),
          SizedBox(width: 5,),
          IconButton(onPressed: (){
            _launchUrl('https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox/FMfcgzGsmWwpLJVJSLKRzdtpqCRpCqjs?compose=new');
          }, icon: Icon(Icons.mail,color: Colors.white,size: 40,)),
          SizedBox(width: 5,),
        ],
      )
    ],
    ),
    ),

    ],
    ),
      ),
    );
  }
}
