import 'package:flutter/material.dart';
import 'package:login_app/login_screen.dart';
import 'package:login_app/myButton.dart';
import 'package:login_app/register_screen.dart';


class BoardingModel {
  String? logoImage;
  String? image;
  String? title;
  String? body;

  BoardingModel({
    required this.logoImage,
    required this.image,
    required this.title,
    required this.body
  });


}

class OnBoardingScreen extends StatelessWidget {
  List<BoardingModel> boarding = [
    BoardingModel(
      logoImage: 'assets/images/images.jpg',
      image: 'assets/images/delivery.png',
      title: 'Get food delivery to your doorstep asap',
      body: 'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
    ),
    BoardingModel(
      logoImage: 'assets/images/images.jpg',
      image: 'assets/images/man.png',
      title: 'Buy any food from your favourite restaurant',
      body: 'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemBuilder: (context, index) => BuildOnboardingItem(boarding[index]),
                  itemCount: boarding.length,
          ),
            ),
            MyButton(text: 'Get Started', onClicked: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
              width: double.infinity,

              color: Colors.teal[400],
            ),
            // Container(
            //   clipBehavior: Clip.antiAliasWithSaveLayer,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(5)
            //   ),
            //   child: Column(
            //     children: [
            //       MyButton(text: 'Get Started', onClicked: (){},
            //         width: double.infinity,
            //         height: ,
            //         color: Colors.teal[400],
            //       ),
            //
            //     ],
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                }, child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.teal[400]
                  ),
                ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget BuildOnboardingItem(BoardingModel model) => Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              width: 70,
              height: 40,

              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: MyButton(text: 'Skip', onClicked: (){},color: Colors.grey[300],)
          ),
        ],
      ),
      SizedBox(
        height: 18,
      ),
      Center(
        child: Image(image: AssetImage('${model.logoImage}'),
          width: 300,
          height: 50,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Image(image: AssetImage('${model.image}')),
      SizedBox(height: 22,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${model.title}',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${model.body}',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal
            ),
          ),
        ],
      ),

    ],
  );
}
