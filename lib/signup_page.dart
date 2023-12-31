import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    List images=[
      "g.png",
      "t.png",
      "f.png",
    ];

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

                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email,color: Colors.deepOrange,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.password,color: Colors.deepOrange,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
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
              child: Text('Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

          ),
          SizedBox(height: w*0.2,),


          Center(
            child: RichText(
              text: TextSpan(
                text: "Sign up using one of the following methods",style:TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
              ),


              ),
            ),
          ),
          Center(
            child: Wrap(
              children: List<Widget>.generate(
                3,
                  (index){
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30,
                        backgroundColor: Colors.white60,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "img/"+images[index]
                        ),

                      ),
                    ),
                  );
                  }
              ),

            ),
          ),
        ],
      ),
    );
  }
}
