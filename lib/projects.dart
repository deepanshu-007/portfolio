import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Myprojects extends StatefulWidget {
  const Myprojects({Key? key}) : super(key: key);

  @override
  State<Myprojects> createState() => _MyprojectsState();
}

class _MyprojectsState extends State<Myprojects> {
  Future<void> _launchUrl(String link) async {
    final Uri _url = Uri.parse(link);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
  mypro(lang,title,desc,star){
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(top: 40,left: 20,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(lang,style: TextStyle(color: Colors.white70,fontSize: 18)),
              SizedBox(height: 15,),
              Text(title,style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 30)),
              SizedBox(height: 15,),
              Text(desc,style: TextStyle(color: Colors.white70,fontSize: 16)),
              SizedBox(height: 15,),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.white70,size: 20,),
                  SizedBox(width: 15,),
                  Text(star, style: TextStyle(color: Colors.white70,fontSize:20),),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){
                    _launchUrl('https://github.com/deepanshu-007?tab=repositories');
                  }, icon: Icon(FontAwesomeIcons.github
                      ,color: Colors.white70)),
                ],
              )
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
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mypro("FLUTTER", "CurrWeather", "A Weather application", "10"),
              mypro("FLUTTER", "Ui/Ux Clone", "Cloned a Ui of Apeiro Medica app", "9"),
              mypro("JAVA", "iTUNES", "A Music player application", "8"),
              mypro("IOT(ARDUINO UNO)", "Black line Car", "Automated Black line following car", "10"),
              mypro("FLUTTER", "Portfolio", "A Portfolio application", "10"),
              mypro("FLUTTER", "OTP Authentication", "phone otp verification using firebase", "10"),

            ],
          ),
        ),
      ),
    );
  }
}
