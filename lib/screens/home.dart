import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_app/constants/dataGenerator.dart';
import 'package:money_app/models/TranscationModel.dart';
import 'package:money_app/models/cardModel.dart';
import 'package:money_app/models/listModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CardModel> cardList = cardData();
  List<TransactionModel>? menuList;
  List<ListModel> listicons = cardListModeldata();
  @override
  void initState() {
    super.initState();
    setState(() {
      menuList = tranactionMenuList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 5),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 16, left: 16, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/menu.png',
                          height: 20,
                          width: 30,
                        )),
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/user.jpeg'),
                    )
                  ]),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Good Evening",
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w500)),
                  Text("Alex William",
                      style: GoogleFonts.inter(
                          fontSize: 30, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            SizedBox(
              height: 199,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16, right: 6),
                  itemCount: cardList.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 200,
                      width: 344,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: cardList[index].color),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 30,
                              left: 30,
                              child: Text(
                                "CARD NUMBER",
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )),
                          Positioned(
                              bottom: 50,
                              left: 30,
                              child: Text(
                                "CARD HOLDER NAME",
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )),
                          Positioned(
                              top: 50,
                              left: 30,
                              child: Text(
                                "**** **** **** 87987",
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              )),
                          Positioned(
                              bottom: 30,
                              left: 30,
                              child: Text(
                                cardList[index].userName.toString(),
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              )),
                          Positioned(
                              bottom: 50,
                              right: 57,
                              child: Text(
                                "EXPIRY DATE",
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )),
                          Positioned(
                              bottom: 30,
                              right: 30,
                              child: Text(
                                "02-04-1997",
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              )),
                          Positioned(
                              top: 35,
                              right: 30,
                              child: Image.asset(
                                'assets/images/visa.png',
                                width: 40,
                                height: 50,
                              )),
                        ],
                      ),
                    );
                  })),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Operations",
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                  Container()
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 8,
                    color: Color.fromRGBO(0, 0, 0, 0.16),
                  )
                ],
              ),
              height: 114,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menuList!.length,
                  itemBuilder: ((context, index) {
                    return OperationCard(
                      operation: menuList![index].title,
                      isselected: true,
                      selectedIcon: menuList![index].icon,
                    );
                  })),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Transaction Histories",
                  style: GoogleFonts.inter(
                      fontSize: 18, fontWeight: FontWeight.w700)),
            ),
            ListView.builder(
                itemCount: listicons.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                            offset: Offset(2, 2),
                            blurRadius: 10,
                            color: Color.fromRGBO(0, 0, 0, 0.16),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: true ? Colors.white : Colors.white,
                      ),
                      margin:
                          const EdgeInsets.only(top: 13, left: 20, right: 20),
                      height: 65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            listicons[index].icon,
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(listicons[index].title,
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800)),
                              Text(listicons[index].date,
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200)),
                            ],
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text("" + listicons[index].amount.toString(),
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blue)),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

class OperationCard extends StatefulWidget {
  final String? operation;
  final String? selectedIcon;
  final String? unselectedItem;
  final bool? isselected;
  OperationCard(
      {this.operation,
      this.selectedIcon,
      this.unselectedItem,
      this.isselected});

  @override
  State<OperationCard> createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(2, 2),
        //     blurRadius: 12,
        //     spreadRadius: 5,
        //     color: Color.fromRGBO(0, 0, 0, 0.16),
        //   )
        // ],
        // boxShadow: [
        //   BoxShadow(
        //     // color: Colors.black,
        //     blurRadius: 10,
        //     spreadRadius: 5,
        //     // offset: Offset(8.0, 8.0)
        //   )
        // ],
        borderRadius: BorderRadius.circular(15),
        color: true ? Colors.white : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(widget.selectedIcon.toString()),
            height: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.operation.toString())
        ],
      ),
    );
  }
}
