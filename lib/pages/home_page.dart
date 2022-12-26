import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);
  static final String id = 'home_page';
  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: Text('Cars', style: TextStyle(color: Colors.orange, fontSize: 26),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_none, color: Colors.orange, size: 26,),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.favorite_border, color: Colors.orange, size: 26,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //Categories
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, 'All'),
                    singleTab(false, 'Red'),
                    singleTab(false, 'Yellow'),
                    singleTab(false, 'Green'),
                    singleTab(false, 'Grey'),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //MakeItem
              makeItem('assets/images/im_car1.jpg'),
              makeItem('assets/images/im_car2.jpg'),
              makeItem('assets/images/im_car3.jpg'),
              makeItem('assets/images/im_car4.png'),
              makeItem('assets/images/im_car5.jpg'),
            ],
          ),
        ),
      )
    );
  }
  Widget singleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: type ? Colors.orange : Colors.white,
        ),
        child: Center(
          child: Text(text, style: TextStyle(color: type ? Colors.white : Colors.black, fontSize: type ? 20 : 17),),
        )
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            offset: Offset(0,10),
            color: Colors.grey
          )
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('PDP Car', style: TextStyle(color: Colors.white, fontSize: 25),),
                SizedBox(width: 10,),
                Text('Electric', style: TextStyle(color: Colors.orange, fontSize: 20),),
              ],
            ),
            SizedBox(height: 10,),
            Text('100\$',style: TextStyle(color: Colors.white, fontSize: 25),),
            SizedBox(height: 55,),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange
              ),
              child: Center(
                child: Icon(Icons.favorite_border, size: 20, color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
