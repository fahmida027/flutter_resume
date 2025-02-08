import 'package:assignment3/edu.dart';
import 'package:assignment3/exp.dart';
import 'package:assignment3/skills.dart';
import 'package:flutter/material.dart';
import 'package:assignment3/info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //centerTitle: true,

       // backgroundColor: Colors.amberAccent,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, 
        child: Center(
          child: Column(
            //!mainAxisAlignment: MainAxisAlignment.center,
            //!crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              /*Image.network(
                  "https://cdn.worldvectorlogo.com/logos/flutter.svg",
                  width: 100,
                  height: 100),*/

                 Container(
          width: 100,  
          height: 100, 
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/Me.jpeg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(50),  
          ),
        ),
                  
             Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        "Umme Fahmida Trisha",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 1), // Adds spacing between the two texts
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        "Email : fahmida.csecu@gmail.com",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),

        SizedBox(height: 15),
        
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 1, 47, 85),
              ),
              onPressed: (){
        
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Info()));
              }, 
              child: Text("Personal Info", style: TextStyle(
                color: Colors.white
              ),)),

            SizedBox(height: 8),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 1, 47, 85),
              ),
              onPressed: (){
        
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Skills()));
              }, 
              child: Text("      Skills       ", style: TextStyle(
                color: Colors.white
              ),)),

              SizedBox(height: 8),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 1, 47, 85),
              ),
              onPressed: (){
        
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Edu()));
              }, 
              child: Text("  Education  ", style: TextStyle(
                color: Colors.white
              ),)),

              SizedBox(height: 8),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 1, 47, 85),
              ),
              onPressed: (){
        
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Exp()));
              }, 
              child: Text(" Experience ", style: TextStyle(
                color: Colors.white
              ),)),



              
        
         /*ElevatedButton.icon(onPressed:(){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text ("This is snackbar")));
              }, 
              label: Text("Wake Up"),
              icon : Icon(Icons.access_alarm_outlined),)
        */
             
            ],
          ),
        ),
      ),
    );
  }
}

