import 'package:flutter/material.dart';

import 'InputWrapper.dart';


class otherelements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blue[800],

        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
          //  header(),
            Expanded(
            child:Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(60),
                   topLeft: Radius.circular(60),
                 )
               ),
              child: InputWrapper(),
            ),
            ),
          ],
        ),
      ),
    );
  }

}