

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemini_gpt/pages/MyHomePage.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                        'Your AI Assistant',
                    style: TextStyle(
                    fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                          ),
                        ),


                    SizedBox(height: 16,),
                    Text('Using this software, you can ask questions and receive articles using artificial intelligence assistant',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

            SizedBox(height: 32,),
           Image.asset('assets/onboarding.png'),
            SizedBox(height: 32,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) => const MyHomePage()),
                      (route) => false
                  );
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 28),
              ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Continue',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8,
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white,)
                  ],
                ),
            ),

          ],
        ),
      ),
    );
  }
}