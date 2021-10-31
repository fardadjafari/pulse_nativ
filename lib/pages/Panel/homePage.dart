import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse_nativ/data/category_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange[300],
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.attach_money_sharp,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "142",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.checkmark_circle,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Active Account",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            Directionality(textDirection: TextDirection.ltr, child:  Row(
                  children: [
                    Text(
                      "Hello To My App",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
                    )
                  ],
                ),),
            SizedBox(height: 10),
            Directionality(textDirection: TextDirection.ltr ,child: Row(
              children: [
                Text(
                  "Milad Karimifard",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )
              ],
            )),
            SizedBox(height: 50),
            Expanded(
                child: ListView.builder(
                  itemCount: imageList.length,
                    itemBuilder: (context,index){
                      return Container(
                        width: double.infinity,
                        height: 100,
                        margin: EdgeInsets.symmetric(vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorList[index],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(imageList[index],width: 70),
                            Text(categoryName[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      );
                    }
                )
            )
          ],
        ),
      ),
    ));
  }
}
