import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:login_app/button.dart';
import 'package:login_app/login_screen.dart';
import 'package:login_app/myform.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var phoneController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  bool isPassword = true;

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
                    Image(image: AssetImage('assets/images/login.png'),height: 100,width: double.infinity,),
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
                                'Register',
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
                            'Email',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 0,
                              ),
                            ),
                            child: MyForm(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              hintText: 'Eg.example@gmail.com',
                            ),
                          ),
                          SizedBox(height: 10,),
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
                                  child: MyForm(
                                    controller: phoneController,
                                    keyboardType: TextInputType.phone,
                                    hintText: 'Eg.1545185956',
                                   )
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 0,
                              ),
                            ),
                            child: MyForm(
                              controller: passwordController,
                              label: 'Password',
                              suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                              isPassword: isPassword,
                              suffixPressed: ()
                              {
                                setState(()
                                {
                                  isPassword = !isPassword;
                                });
                              },
                              keyboardType: TextInputType.visiblePassword,
                              validate: (value)
                              {
                                if(value!.isEmpty)
                                {
                                  return 'password is too Short';
                                }
                              },
                            ),
                          ),
                          SizedBox(height: 5,),

                          MyButton1(text: 'Register', onClicked: (){},
                            width: double.infinity,
                            color: Colors.blue,
                          ),
                          SizedBox(height: 5,),
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
                          SizedBox(height: 5,),

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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Has any account?"),
                              TextButton(onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                ),
                                );
                              }, child: Text(
                                'Sign in here',
                                style: TextStyle(
                                    color: Colors.blue
                                ),
                              ),
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Column(
                            children: [
                              Text(
                                'By registration your account ,you are agree to our',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'terms and codition',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),

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
