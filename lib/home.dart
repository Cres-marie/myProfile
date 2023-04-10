import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ionicons/ionicons.dart';

import 'components/AboutMe.dart';
import 'components/SocialIcons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //margin: EdgeInsets.only(top: 70),
          //padding: EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Column(
            children: [
      
              
              SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    //backgroundimage
                    Image.asset('images/background.jpg', height: 150, width: double.infinity,fit: BoxFit.cover,),
                    //AssetImage('images/background.jpg'),
                    
                    //profile pic
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/Mary.jpeg'),
                          radius: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(
                //height: 4,
              //),
              Text(
                'Marie Crescentia',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text('FUTTER DEVELOPER'),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcons(icon: Ionicons.logo_github),
                  SocialIcons(icon: Ionicons.logo_linkedin),
                  SocialIcons(icon: Ionicons.logo_whatsapp),
                  SocialIcons(icon: Ionicons.logo_instagram),
                ],
              ),
              SizedBox(
                height: 8,
              ),
      
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    AboutMe(data: 'Hire Me',),
                    AboutMe(data: 'My Portfolio',),
                    AboutMe(data: 'Sign My Petition',),
                    AboutMe(data: 'Visit my Store',),
                  ],
                ),
              ),
      
              
            ],
          ),
        ),
      ),
    );
  }
}



