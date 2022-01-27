import 'package:flutter/material.dart';
class InputWrapper extends StatefulWidget {
  @override
  _InputWrapperState createState() => _InputWrapperState();
}

class _InputWrapperState extends State<InputWrapper> {
  var _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key:_formkey,
      child: Padding(padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Container(height: 90,
            child: Text("LOGIN",style:TextStyle(fontSize: 40,color: Colors.blueAccent[400],fontWeight: FontWeight.bold) ,),),
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
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: '***********',
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
        )),);
  }
}

/*class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(30),
        child:
        Column(
         children: <Widget>[
           SizedBox(height: 90,),
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
             validator: (String value),

             scrollPadding: EdgeInsets.all(10),
             keyboardType: TextInputType.visiblePassword,
             decoration: InputDecoration(
               labelText: 'Password',
               hintText: '***********',
               errorStyle: TextStyle(color:Colors.deepOrange,fontSize: 15.0),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(5.0),
               ),
             ),
           ),
           SizedBox(height: 40,),
           Text('Forget Password?',textAlign: TextAlign.right,),
           SizedBox(height: 40,),
           RaisedButton(
               color: Theme.of(context).primaryColorLight,
               elevation: 6.0 ,

               child: Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

               onPressed: null),

         ],
              ));
  }
}*/
