import 'package:apps/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(198, 219, 255,1),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
              child: Image.asset('assets/2.png'),
            ),
            const Text('Welcome to Laege!',
              style: TextStyle(
                fontSize:25.0,
                fontFamily: 'Times New Roman',
              fontWeight:FontWeight.bold,),),
            const Text('We will be happy to help you take care of yourself,'
                'offering you a complete process of Diagnosis treatment and'
                'recovery from your own home.', style: TextStyle(
              fontSize:10.0,
              fontFamily: 'Times New Roman',
            ),
            textAlign: TextAlign.center,
            ),
            TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size.fromHeight(50.0),
                padding: const EdgeInsets.all(18.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()
                ));
              },
              child: const Text('Sign Up',
                style: TextStyle(
                    color: Colors.white
                ),),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                Text('Sign in', style: TextStyle(
                  fontWeight: FontWeight.w700,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
