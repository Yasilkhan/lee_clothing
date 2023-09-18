import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lee_clothing/bottom_keys/home_page.dart';
import 'package:lee_clothing/main.dart';

class Cart_page extends ConsumerStatefulWidget {
  const Cart_page({super.key});

  @override
  ConsumerState<Cart_page> createState() => _Cart_pageState();
}

class _Cart_pageState extends ConsumerState<Cart_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.only(top: 30,right: 10,left: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: w*0.2,
                  height: w*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w*0.03),
                    boxShadow: [
                      BoxShadow(
                        color: primerycolor,
                        offset: Offset(0, 4)
                      ),

                    ]
                  ),
                )
              ],
            ),
            SizedBox(height: w*0.03,),
            Row(
              children: [
                Container(
                  height: w*0.2,
                  width: w*0.94,
                  decoration: BoxDecoration(
                    color: primerycolor,
                    borderRadius: BorderRadius.circular(w*0.02),
                  ),
                  child: Center(child: Text('address')),
                ),
              ],
            ),
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Counter(),
                );
              },),
            ),
            SizedBox(height: w*0.02,),
            Container(
              color: Colors.black12,
              width: w*0.94,
              height: w*0.15,
            )
          ],
        ),
      ),

    );
  }
}
class Counter extends ConsumerStatefulWidget {
  const Counter({super.key,});

  @override
  ConsumerState<Counter> createState() => _CounterState();
}

class _CounterState extends ConsumerState<Counter> {


  @override
  Widget build(BuildContext context) {
  final counter= ref.watch(countProvider);

    return
      Container(
        height: w*0.5,
        width: w*0.94,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: w*0.4,
                        height: w*0.45,
                        color: Colors.black26,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("productN"),
                    SizedBox(
                      height: w*0.04,
                    ),
                    Text("Price"),
                    SizedBox(
                      height: w*0.04,
                    ),
                    Text("Size"),
                    SizedBox(
                      height: w*0.04,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {

                            ref.read(countProvider.notifier).update((state) => counter-1,

                            );
                          },
                          child: Container(
                            height: w*0.1,
                            width: w*0.1,
                            decoration: BoxDecoration(
                                color: primerycolor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Icon(Icons.delete)),
                          ),
                        ),
                        SizedBox(width: w*0.03,),
                        Container(
                          height: w*0.1,
                          width: w*0.1,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text(counter.toString())),
                        ),
                        SizedBox(width: w*0.03,),

                        InkWell(
                          onTap: () {
                            ref.read(countProvider.notifier).update((state) => counter+1,


                            );
                          },
                          child: Container(
                            height: w*0.1,
                            width: w*0.1,
                            decoration: BoxDecoration(
                                color: primerycolor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Icon(Icons.add)),
                          ),
                        )
                      ],
                    ),


                  ],
                ),

              ],
            )
          ],
        ),

      );

    
  }
}
