import 'package:flutter/material.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO: onTap LoginPage2
        print('onTap LoginPage2');
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF18171C),
        body: Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: 430.0,
            height: 932.0,
            child: Column(
              children: <Widget>[
                Spacer(flex: 98),
                Align(
                  alignment: Alignment(-0.06, 0.0),
                  child:
// Group: Logo

                      SizedBox(
                    width: 341.0,
                    height: 85.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 125.0,
                          child: Container(
                            width: 85.0,
                            height: 85.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(''),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 2.0,
                          child: Text(
                            'FARCEUR',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 68.0,
                              color: Colors.white.withOpacity(0.06),
                              letterSpacing: 2.72,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(flex: 96),
                Container(
                  alignment: Alignment(0.06, -0.36),
                  width: 430.0,
                  height: 653.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                    ),
                    color: const Color(0xFF242526),
                  ),
                  child: SizedBox(
                    width: 368.0,
                    height: 653.0,
                    child: Column(
                      children: <Widget>[
                        Spacer(flex: 85),
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 25.0,
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(flex: 65),
// Group: Group 2

                        SizedBox(
                          width: 368.0,
                          height: 94.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Align(
                                alignment: Alignment(-0.86, 0.0),
                                child: Text(
                                  'User Name',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment(-0.87, 0.05),
                                width: 368.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: const Color(0xFF3A3B3C),
                                ),
                                child: Text(
                                  'Sathya',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(flex: 23),
// Group: Group 3

                        SizedBox(
                          width: 368.0,
                          height: 94.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Align(
                                alignment: Alignment(-0.86, 0.0),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment(-0.86, 0.39),
                                width: 368.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: const Color(0xFF3A3B3C),
                                ),
                                child: Text(
                                  '********',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 24.0,
                                    color: Colors.white,
                                    letterSpacing: 0.72,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(flex: 23),
// Group: Group 4
                        Container(
                          alignment: Alignment.center,
                          width: 368.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xFFF2F1EF),
                          ),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 20.0,
                              color: const Color(0xFF18171C),
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Spacer(flex: 181),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
