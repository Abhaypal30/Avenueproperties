import 'package:avenueproperties/Controller/MettingController/meetingcontroller.dart';
import 'package:flutter/material.dart';

class TotalMeeting extends StatefulWidget {
  const TotalMeeting({super.key});

  @override
  State<TotalMeeting> createState() => _TotalMeetingState();
}

class _TotalMeetingState extends State<TotalMeeting> {
  final metting = MettingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "Total Metting",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: FutureBuilder(
                  future: metting.mettingData(),
                  builder: (context, sanpshot) {
                    var meet = sanpshot.data;
                    return ListView.builder(
                      itemCount: meet!.length,
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
                                    color: const Color.fromARGB(
                                        255, 243, 242, 242),
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
                                              "${meet[index].aId}",
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
                                              "${meet[index].leadId}",
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
                                              "${meet[index].leadPhone}",
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
                                            const Icon(
                                                Icons.currency_rupee_sharp),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "${meet[index].propertyId}",
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
                                              "${meet[index].clientCode}",
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
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      // Row(
                                      //   children: [
                                      //     Icon(Icons.water_drop_outlined),
                                      //     SizedBox(
                                      //       width: 15,
                                      //     ),
                                      //     Text(
                                      //       "",
                                      //       style: TextStyle(
                                      //           fontSize: 15,
                                      //           fontWeight: FontWeight.w500),
                                      //     )
                                      //   ],
                                      // ),
                                      Row(
                                        children: [
                                          const Icon(Icons.home),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${meet[index].serviceType}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.real_estate_agent),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "${meet[index].name}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            )
                          ],
                        );
                      },
                    );
                  }),
            ),
            // ElevatedButton(onPressed: () {
            //   metting.mettingData();

            // }, child: const Text("Press here")),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, bottom: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "1",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "2",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "3",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "4",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "5",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "6",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "7",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "8",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "9",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "10",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "11",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "12",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "13",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "14",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "15",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "16",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
