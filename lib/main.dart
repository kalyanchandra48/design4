import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FourthDesign(),
    ),
  );
}

class FourthDesign extends StatelessWidget {
  List<String> names = [
    'Lucorfx-Demo1',
    'Coinexx-Demo',
    'Coinexx-Demo1',
    'Hugosway  Real3',
    'Kalyan Chandra'
  ];
  List<String> connection = [
    '.Connected',
    '.Connected',
    '.Disconnected',
    '.Error',
    '.Dont know'
  ];
  List<String> code = ['#444563', '#422626', '#526627', '#324363', '#253363'];
  List<String> dollars = [
    '900.00 USD',
    '800.00 USD',
    '760.00 USD',
    '600.00 USD',
    '999.00 USD'
  ];
  List<String> images = [
    'assets/tabu.jpeg',
    'assets/rena.jpeg',
    'assets/joel.jpeg',
    'assets/doron.jpeg',
    'assets/kalyan.jpg'
  ];

  List<String> imagenames = [
    'Shereen ',
    'Thabitha',
    'JoelJohnBayya',
    'Anoop',
    'Kalyan'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
		//      margin:EdgeInsets.only(top:10),
		      height:70,
		      animationDuration:Duration(milliseconds:100),
    backgroundColor: Colors.grey,
    items: <Widget>[
      Icon(Icons.account_balance, size: 40,),
      Icon(Icons.supervisor_account, size: 40),
      Icon(Icons.account_circle, size: 40),
    ],
    onTap: (index) {
      //Handle button tap
    },
  ),
 
 
      backgroundColor: Color(0xffECECEC),

      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          SizedBox(
            height: 0,
          ),
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff020516),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      'Broker Accounts',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Color(0xffA1A5A5),
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.autorenew),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: GestureDetector(
                      onTap: () {
		      print('On tap is working');

		      },
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Color(0xffA1A5A5),
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //broker accoun container closed
          SizedBox(
            height: 1,
          ),
	 // Spacer(),
          ListView.separated(
            shrinkWrap: true,
	    physics:ScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 5,
            separatorBuilder: (context, i) {
              return SizedBox(
                height: 15,
              );
            },
            itemBuilder: (context, i) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(29)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 25,
                        spreadRadius: 10,
                        offset: Offset(
                          9,
                          14,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 25,
                              top: 30,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                names[i],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ), //rowchild1
                          Spacer(),
                            
                       
                          Padding(
                            padding: EdgeInsets.only(right: 10, top: 30),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                connection[i],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ), //rowchild2
                      SizedBox(
                        height: 2,
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30, top: 2),
                            child: Text(
                              code[i],
                              style: TextStyle(
                                fontSize: 12,
                               // fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),

                          //rowchild1
                          SizedBox(
                            width: 165,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 1, top: 3),
                            child: Text(
                              dollars[i],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ), //rowchild2
                        ],
                      ),
                      //secondrow

                      //Thirdrow
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30, top: 2),
                            child: Container(
                              height: 42,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                image: DecorationImage(
                                  image: AssetImage(images[i]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            imagenames[i],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ], //children of row
                      ),
                    ],
                  ),
                ),
              );
            }, //listview
          ), //Listviewseparated
        ],
      ), //column
    ); //scaffold
  }
}
