import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
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
    child: Padding(padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Container(height: 90,
              child: Text("FORGET PASSWORD",style:TextStyle(fontSize: 20,color: Colors.blueAccent[400],fontWeight: FontWeight.bold) ,),),
            TextFormField(
              scrollPadding: EdgeInsets.all(10),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'abc@gmail.com',
                errorStyle: TextStyle(color:Colors.deepOrange,fontSize: 15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(height: 40,),
            TextFormField(
              //validator: (String value),
              validator: (String value){
                if(value.isEmpty){
                  return 'Please enter principle';
                }
              },
              scrollPadding: EdgeInsets.all(10),
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'MOBILE',
                errorStyle: TextStyle(color:Colors.deepOrange,fontSize: 15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Text('Forget Password?',textAlign: TextAlign.right,),
            SizedBox(height: 30,),
            Container(width:200,height:50,child: RaisedButton(
                color: Theme.of(context).primaryColorDark,
                elevation: 6.0 ,

                child: Text('Submit',style: TextStyle(color: Colors.white,/*fontWeight: FontWeight.bold,*/fontSize: 15),textScaleFactor: 1.5,),

                onPressed: (){}),
            ),

          ],
        )),
    ),
    ),
    ],
    ),
    ),
    ),
    );
  }

}