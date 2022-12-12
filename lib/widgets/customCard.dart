import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CusomCard extends StatelessWidget {
  const CusomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(

          decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 0,
                offset: Offset(
                    10,10
                ),
              ),]
          ),
          child: Card(
            elevation: 10,
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('HandBg LV',style: TextStyle(
                    color: Colors.grey,
                    fontSize:16,
                  ),
                  ),
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'$250',style: TextStyle(
                        color: Colors.black,
                        fontSize:16,
                      ),
                      ),
                      Icon(Icons.favorite,color: Colors.red,)
                    ],
                  )
                ],

              ),
            ),
          ),
        ),
        Positioned(
            right: 32,
            top: -60,
            child: Image.network(
              'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
              height: 100,
            )
        ),

      ],
    );
  }
}
