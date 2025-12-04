import 'package:avenueproperties/Controller/BorkerageController/brokerage.dart';
import 'package:flutter/material.dart';

class TotalBrokerage extends StatefulWidget {
  const TotalBrokerage({super.key});

  @override
  State<TotalBrokerage> createState() => _TotalBrokerageState();
}

class _TotalBrokerageState extends State<TotalBrokerage> {
  final brokerage = TotalBrokerageconytoller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Center(
      //     child: Text("Total Brokerage"),
      //   ),
      // )

      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Brokerage',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: FutureBuilder(
                  future: brokerage.brokerageData(),
                  builder: (context, snapshot) {
                    var broke = snapshot.data;
                    return ListView.builder(
                      itemCount: broke!.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 210,
                                  height: 160,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: Color.fromARGB(255, 243, 242, 242),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.plumbing_outlined),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "${broke[index].aId}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        // SizedBox(
                                        //   height: 5,
                                        // ),
                                        Row(
                                          children: [
                                            const Icon(Icons.person_2_outlined),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "${broke[index].name}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        // SizedBox(
                                        //   height: 5,
                                        // ),
                                        Row(
                                          children: [
                                            const Icon(Icons.phone),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "${broke[index].leadPhone}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),

                                        // SizedBox(
                                        //   height: 5,
                                        // ),
                                        Row(
                                          children: [
                                            const Icon(Icons.currency_rupee_sharp),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "${broke[index].acutualBudget}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),

                                        // SizedBox(
                                        //   height: 5,
                                        // ),
                                        Row(
                                          children: [
                                            const Icon(Icons.message),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "${broke[index].comment}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        Row(
                                        children: [
                                          const Icon(Icons.home_filled),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${broke[index].serviceType}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 153,
                                  height: 160,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8)),
                                    color: Color.fromARGB(255, 243, 242, 242),
                                  ),
                                  child:  Column(
                                    
                                        
                                  
                                    children: [
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.water_drop_outlined),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${broke[index].interestType}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.home),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${broke[index].assignAgent}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.home_filled),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${broke[index].clientBrokerage}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.home_filled),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${broke[index].clientCode}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.home_filled),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${broke[index].propertyId}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  }),
            ),

            // ElevatedButton(onPressed: () {
            //   brokerage.brokerageData();

            // }, child: const Text("Press Here"))
          ],
        ),
      ),
    );
  }
}
