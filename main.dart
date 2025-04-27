import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Store",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30.0,
            ),
            SizedBox(width: 10.5),
          ],
          backgroundColor: Colors.black12,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
        ),
        drawer: Drawer(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.blue,
                  size: 20.0,
                ),
                title: Text(
                  'Information',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                trailing: Text(
                  'I',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.movie,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text(
                'فيلم كوري جديد',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

             subtitle: Text(
               'اختر من بطاقات الافلام',
               style: TextStyle(
                 fontSize: 14.0,
                 color: Colors.red,
                 fontWeight: FontWeight.bold
               ),

             ),
              trailing: Icon(
                Icons.play_arrow,
                color: Colors.green,
              ),
            ),

            Container(
              height: 200.0,
              width: 200.0,
              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [

                  SizedBox(width: 15.0),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        print("Study Group clicked!");
                      },
                      child: Container(
                        width: 170.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: NetworkImage('https://m.media-amazon.com/images/M/MV5BZDJmMDU0MTEtNmZkOS00ZGViLWExYTctYWY5YWQ0NTZlZTdhXkEyXkFqcGc%40._V1_FMjpg_UX1000_.jpg'), // استبدل هذا الرابط برابط صورة البوستر
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Study Group',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ),
                    ),
                  ),


                  SizedBox(width: 15.0),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        print(" ًWeak hero  clicked!");
                      },
                      child: Container(
                        width: 170.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: NetworkImage('https://m.media-amazon.com/images/M/MV5BZDJmMDU0MTEtNmZkOS00ZGViLWExYTctYWY5YWQ0NTZlZTdhXkEyXkFqcGc%40._V1_FMjpg_UX1000_.jpg'), // استبدل هذا الرابط برابط صورة البوستر
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Weak Hero Class 1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ),
                    ),
                  ),







                ],





              ),
            ),


          ],
        ),
      ),
    );
  }
}
