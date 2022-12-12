import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/widgets/customCard.dart';

class HomePage extends StatelessWidget {
 const  HomePage({Key? key}) : super(key: key);
  static String id= 'HomePAge';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
         IconButton(onPressed: (){},
             icon:
             Icon(
               FontAwesomeIcons.cartPlus,
               color: Colors.black,
         ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'TREND',style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 65),
        child: GridView.builder(
          clipBehavior: Clip.none,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 100,
            ),
            itemBuilder: (context,index){
          return CusomCard();
        }),
      )
    );
  }
}

