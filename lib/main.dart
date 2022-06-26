import 'package:flutter/material.dart';
import 'package:wallet_page/price_model.dart';
import 'package:wallet_page/utils/constants.dart';

void main() {
  runApp(const LessonApp());
}

class LessonApp extends StatelessWidget {
  const LessonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WalletPage(),
    );
  }
}

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: scaffoldColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.lightBlue,
            ),
          ),
        ),
        title: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/profilePhoto.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: Text(
                  "Available balance:",
                  style: kTextStyle(
                    color: accountColor,
                    size: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                "\$28.000",
                style: kTextStyle(size: 50, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 35, 20, 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 90,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xff1be7ee),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 65,
                        width: 65,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  offset: Offset(2, 2))
                            ]),
                        child: Icon(
                          Icons.call_made,
                          color: accountColor,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 25),
                        child: Text(
                          "Send",
                          style:
                              kTextStyle(size: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 60,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: const Color(0xffc8e7a6), width: 8),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: const Icon(
                    Icons.call_received,
                    color: Color(0xffc8e7a6),
                    size: 25,
                  ),
                ),
                Container(
                  height: 90,
                  width: 60,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: const Color(0xffffecc5), width: 8),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: const Icon(
                    Icons.dashboard_outlined,
                    color: Color(0xffffecc5),
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 15),
            child: Text(
              "Last Send",
              style: kTextStyle(size: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ...listPrice.map((e) => _item(e)).toList(),
        ],
      ),
    );
  }

  Widget _item(PriceModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 25),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        title: Text(
          model.name ?? "",
          style: kTextStyle(size: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          model.date ?? "",
          style: kTextStyle(color: Colors.grey[500], size: 12),
        ),
        trailing: Text(
          model.price ?? "",
          style: kTextStyle(
              color: Colors.orangeAccent, fontWeight: FontWeight.w600),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.black12, width: .5)),
      ),
    );
  }
}
