import 'package:flutter/material.dart';
import 'package:flutter_userlogin_templete/app_properties.dart';
class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
  
}
class LoginPageState extends State<LoginPage>{

  TextEditingController _txtMobileNumber = TextEditingController(text: "9898989898");
  TextEditingController _txtPassword= TextEditingController(text: "123456");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget loginButton = Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: 40,
      child: InkWell(
        onTap: () {

        },
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 80,
          child: Center(
              child: new Text("Log In",
                  style: const TextStyle(
                      color: const Color(0xfffefefe),
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0))),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(236, 60, 3, 1),
                    Color.fromRGBO(234, 60, 3, 1),
                    Color.fromRGBO(216, 78, 16, 1),
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  offset: Offset(0, 5),
                  blurRadius: 10.0,
                )
              ],
              borderRadius: BorderRadius.circular(9.0)),
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/background.jpg'),fit: BoxFit.cover)
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: transparentYellow
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                'Login to your account using\nMobile number',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 32.0,),
              Container(
                height: 240,
                child: Stack(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),bottomLeft: Radius.circular(8.0))
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 32.0,right: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.only(top: 8.0),
                          child: TextField(
                            controller: _txtMobileNumber,
                            style: TextStyle(fontSize: 16.0),
                          ),),
                          Padding(padding: const EdgeInsets.only(top: 8.0),
                            child: TextField(
                              controller: _txtPassword,
                              obscureText: true,
                              style: TextStyle(fontSize: 16.0),
                            ),)
                        ],
                      ),
                    ),
                    loginButton
                  ] ,
                ),
              ),
              Spacer(),

            ],
          ),),

        ],
      ),
    );
  }
  
}