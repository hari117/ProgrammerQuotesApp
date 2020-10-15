//  check() {
//    if (isLoading == true) {
//      return Container(
//          width: 400,
//          height: 300,
//          child: Center(
//            child: Loading(
//                indicator: BallPulseIndicator(),
//                size: 100.0,
//                color: Colors.pink),
//          ));
//    } else if (isError == true && isLoading == false) {
//      return Container(
//          width: 400,
//          height: 300,
//          child: Center(
//              child: Text(
//            "Check Your Internet Connection \n try Again",
//            style: TextStyle(
//                color: Colors.yellow,
//                fontWeight: FontWeight.bold,
//                fontSize: 20),
//          )));
//    } else if (isError == false && isLoading == false) {
//      return Container(
////        width: 400,
//
//        color: Colors.blue,
//        child: Column(
//          children: [
//            Text("$sentance",
//                style: GoogleFonts.quattrocentoSans(
//                  fontSize: 25,
//                  color: Colors.white,
//                )),
//          ],
//        ),
//      );
//    }
//  }

//  body() {
//    return Padding(
//      padding: const EdgeInsets.symmetric(horizontal: 20),
//      child: SingleChildScrollView(
//        child: Column(
//          children: [
//            SizedBox(
//              height: 100,
//            ),
//            Padding(
//              padding: const EdgeInsets.only(right: 190),
//              child: Text("Get Inspired.",
//                  style: GoogleFonts.abrilFatface(
//                    fontSize: 35,
//                    fontWeight: FontWeight.w800,
//                  )),
//            ),
//            SizedBox(
//              height: 50,
//            ),
//            check(),
//            SizedBox(
//              height: 40,
//            ),
//            Padding(
//              padding: const EdgeInsets.only(left: 10.0),
//              child: Row(
//                children: [
//                  Text("Author :",
//                      style: GoogleFonts.quattrocentoSans(
//                        fontSize: 15,
//                        color: Colors.white,
//                      )),
//                  Text(" $author.",
//                      style: GoogleFonts.badScript(
//                          fontSize: 22, color: Colors.white)),
//                ],
//              ),
//            ),
//            SizedBox(
//              height: 40,
//            ),
//            SizedBox(
//              width: 200,
//              height: 50,
//              child: MaterialButton(
//                highlightColor: Colors.blue,
//                elevation: 5,
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(10)),
//                child: Text("Touch Me",
//                    style: GoogleFonts.blackOpsOne(
//                        fontSize: 30,
//                        color: Colors.white,
//                        fontWeight: FontWeight.w500)),
//                onPressed: () {
//                  setState(() {});
//                  callUpdate();
//                },
//                splashColor: Colors.teal,
//                color: Colors.blue,
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
