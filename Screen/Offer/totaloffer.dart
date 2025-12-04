import 'package:avenueproperties/Controller/Offer/offer.dart';
import 'package:flutter/material.dart';

class TotalOffer extends StatefulWidget {
  const TotalOffer({super.key});

  @override
  State<TotalOffer> createState() => _TotalOfferState();
}

class _TotalOfferState extends State<TotalOffer> {
  final offer = TotalofferController();
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
                "Total Offer",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
            ),
            ElevatedButton(onPressed: () {
              offer.offersData();
              
            }, child: const Text("Press here")),
            Column(
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
                        color: const Color.fromARGB(255, 243, 242, 242),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.plumbing_outlined),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            // SizedBox(
                            //   height: 5,
                            // ),
                            Row(
                              children: [
                                Icon(Icons.person_2_outlined),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            // SizedBox(
                            //   height: 5,
                            // ),
                            Row(
                              children: [
                                Icon(Icons.phone),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),

                            // SizedBox(
                            //   height: 5,
                            // ),
                            Row(
                              children: [
                                Icon(Icons.currency_rupee_sharp),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),

                            // SizedBox(
                            //   height: 5,
                            // ),
                            Row(
                              children: [
                                Icon(Icons.message),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500),
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
                              color: Color.fromARGB(255, 243, 242, 242),),
                      
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Icon(Icons.water_drop_outlined),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.home),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.home_filled),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
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
                  ))),const SizedBox(
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
