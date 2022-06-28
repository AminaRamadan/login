import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/button.dart';
import 'package:login_app/myButton.dart';
import 'package:login_app/register_screen.dart';



class LoginScreen extends StatelessWidget {
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/login.png')),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to our restaurant',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Help',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15
                                ),

                              ),
                              Icon(
                                  Icons.question_mark_sharp,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 0,

                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: CountryCodePicker(
                                    initialSelection: 'EG',
                                    showFlag: false,

                                  ),
                                ),
                                Container(
                                  width: 200,
                                  child: TextFormField(
                                    controller: phoneController,
                                    keyboardType: TextInputType.phone,

                                    decoration: InputDecoration(

                                      hintText: 'Eg.1545185956',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          MyButton1(text: 'Sign in', onClicked: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ),
                            );
                          },
                            width: double.infinity,
                            color: Colors.blue,
                          ),
                          SizedBox(height: 10,),
                          Center(
                            child: Text(
                              'Or',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(width: double.infinity,height: 35,
                              decoration: BoxDecoration(

                                border: Border.all(
                                  color: Colors.blue,
                                  width: 0,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage('assets/images/logo.png'),width: 25,),
                                  SizedBox(width: 4,),
                                  Text(
                                    'Sign with by google',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Doesn't have any account?"),
                              TextButton(onPressed: (){Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              );}, child: Text(
                                'Register here',
                                style: TextStyle(
                                    color: Colors.blue
                                ),
                              ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'Use the application according to policy rules, Any kinds of violations will be subject to sanctions',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),

                        ],
                      ),
                    ),
                    // Container(
                    //   width: double.infinity,
                    //   height: 443,
                    //   decoration:const  BoxDecoration(
                    //     borderRadius: BorderRadius.only(
                    //       topLeft: Radius.circular(40.0),
                    //       topRight: Radius.circular(40.0),
                    //     ),
                    //     color: Colors.white,
                    //   ),
                    //
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //
                    //     child:
                    //   ),
                    // ),

                  ],
                ),
              ),
            ),
          ),
        ),



      ),
    );
  }
}


