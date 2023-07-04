import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'img/signup.png'

                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: Column(
              children: [
                SizedBox(height:h*0.14,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60,
                  backgroundImage: AssetImage(
                      "img/profile2.png"
                  ),
                ),
              ],
            ),

          ),
          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Row(
                //   children: [
                //     Expanded(child: Container(),),
                //     Text('Sign into your account',
                //       style: TextStyle(
                //         fontSize: 20,
                //         color: Colors.grey[500],
                //       ),
                //     ),
                //   ],
                // ),


              ],
            ),
          ),
          SizedBox(height: 70,),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Welcome back",style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),),
                ),
                Center(
                  child: Text(
                    "a@a.com",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[500],
                    ),),
                ),
              ],
            ),
          ),
          SizedBox(height: 210,),
          Container(
            margin: const EdgeInsets.only(left: 100,right: 100),
            width: 200,
            height: h*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(
                      'img/loginbtn.png'
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: Center(
              child: Text('Sign out',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

          ),
          SizedBox(height: w*0.2,),



        ],
      ),
    );
  }
}
