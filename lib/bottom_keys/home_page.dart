import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lee_clothing/product_view.dart';
var h;
var w;
Color primerycolor=Colors.greenAccent;
Color textColor=Colors.black;
Color secondryColor=Colors.black12;

class HomePag extends ConsumerStatefulWidget {
  const HomePag({super.key});
  @override
  ConsumerState<HomePag> createState() => _HomePagState();
}

class _HomePagState extends ConsumerState<HomePag> {

  @override
  Widget build(BuildContext context) {
h=MediaQuery.of(context).size.height;
w=MediaQuery.of(context).size.width;
    return
        Scaffold(
         body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
           SliverAppBar(
            title: Text("Lee Fashions",style: TextStyle(color: textColor),),
             backgroundColor: primerycolor,
            expandedHeight: w*0.3,
              floating: true,
             pinned: true,
             snap: true,

         bottom: AppBar(
           backgroundColor: primerycolor,
           title:  Container(
             decoration: BoxDecoration(
                 color: Colors.white,
               borderRadius: BorderRadius.circular(10)
             ),

             child: TextField(
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                 hintText: "Search here",


                 suffixIcon: Icon(Icons.camera_alt_rounded),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),

                 ),
               ),
             ),
           ),

         ),


    ),
       ],
       body: Column(
         children: [
           Expanded(
             flex: 1,

             child: ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: 5,
               itemBuilder: (context, index) {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: w*0.2,
                 height: w*0.2,
                   color: Colors.blue,
                 ),
               );
             },),
           ),
           Expanded(
             flex: 5,
               child: GridView.builder(
                 itemCount: 10,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
               mainAxisSpacing: 8,
               crossAxisSpacing: 8
             ),
             itemBuilder: (BuildContext context, int index) {
               return InkWell(

                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ProductView(),));

                 },
                 child: Container(
                   padding: EdgeInsets.only(left: w*0.06,right: w*0.06),
                   height: w*0.6,
                   width: w*0.4,
                   decoration: BoxDecoration(
                     color: Colors.grey,
                     boxShadow: [
                       BoxShadow(
                         blurRadius: 2,
                         offset: Offset(0, 3)
                       )
                     ],
                     borderRadius: BorderRadius.circular(5),
                   ),
                 ),
               );
             },)
           )
         ],
       ),
   ),
    );
  }
}

