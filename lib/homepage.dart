import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pegawai1"),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.purple, Colors.blue])),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        "24 Desembser 2023",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("07.30",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              Text("Masuk",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18))
                            ],
                          ),
                          Column(
                            children: [
                              Text("16.30",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              Text("Pulang",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Riwayat Absen",
              style: TextStyle(fontSize: 20),
            ),
            Card(
              child: ListTile(
                leading: Text("24 November 2023"),
                title: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("07.30",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 20)),
                            Text("Masuk",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20))
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            Text("16.30",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 20)),
                            Text(" Pulang",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Text("24 November 2023"),
                title: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("07.30",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 20)),
                            Text("Masuk",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20))
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            Text("16.30",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 20)),
                            Text(" Pulang",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),

            // Center(
            //   // child: Container(
            //   //   height: 70,
            //   //   child: ElevatedButton(
            //   //     style: ElevatedButton.styleFrom(

            //   //       backgroundColor: Colors.blueAccent
            //   //     ),

            //   //     onPressed: (){}, child:Text("Ambil Absen",style: TextStyle(fontSize: 30,color: Colors.white),) ),

            //   // ),
            // )
          ],
        ),
      )),
      // floatingActionButton: Container(
      //   height: 65,
      //   color: Colors.blueAccent,
      //   ///width: MediaQuery.of(context).size.width -(2*12),
      //   ///margin: EdgeInsets.symmetric(horizontal: 12),
      //   decoration: BoxDecoration(
      //     color: Colors.cyan,borderRadius: BorderRadius.circular(23)
      //   ),

      //   ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
            ),
            label: 'Beranda',
          ),
          // CurvedNavigationBarItem(
          //   child: Icon(Icons.search),
          //   label: 'Search',
          // ),
          CurvedNavigationBarItem(
            child: Icon(Icons.fingerprint),
            label: 'Absensi',
          ),
          // CurvedNavigationBarItem(
          //   child: Icon(Icons.newspaper),
          //   label: 'Feed',
          // ),
          CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity),
            label: 'Profil',
          ),
        ],
        onTap: (index) {},
      ),
      //body: Container(color: Colors.blueAccent),
    );
  }
}
