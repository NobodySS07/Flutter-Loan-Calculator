import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditPage extends StatefulWidget {
  @override
  _CreditPageState createState() => _CreditPageState();
}

class _CreditPageState extends State<CreditPage> with TickerProviderStateMixin {
  List<String> _credits = [
    '12 Ay',
    '24 Ay',
    '36 Ay',
    '48 Ay',
    '60 Ay',
    '72 Ay',
    '84 Ay',
    '96 Ay',
    '108 Ay',
    '120 Ay',
    '120 Ay',
    '132 Ay',
    '144 Ay',
    '156 Ay',
    '168 Ay',
    '180 Ay'
  ];

  String dropdownValue;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          DefaultTabController(
            length: 2,
            child: Card(
              margin: EdgeInsets.all(10),
              elevation: 5,
              child: InkWell(
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding:
                          EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: Text("Konut Kredi Teklifleri"),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              "Ev satın alırken istediğinizde size uygun konut veya "
                                  "ihtiyaç kredisi oranlarını .... uygulaması üzerinden "
                                  "tek bir sayfada kaşılaştırarak, kredi başvurunuzu "
                                  "kolaylıkla yapabilirsiniz."),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.grey.shade200),
                              ),
                              child: Container(
                                height: 40,
                                margin: EdgeInsets.all(10),
                                child: TabBar(
                                  controller: _tabController,
                                  labelColor: Colors.black,
                                  unselectedLabelColor: Colors.black,
                                  indicator: UnderlineTabIndicator(
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                      width: 4.0,
                                    ),
                                    insets: EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 40.0),
                                  ),
                                  tabs: <Widget>[
                                    Container(
                                      height: 35,
                                      child: Text("Konut Kredisi"),
                                      alignment: Alignment.center,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      height: 35,
                                      alignment: Alignment.center,
                                      color: Colors.white,
                                      child: Text("İhtiyaç Kredisi"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 200,
                            margin: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade200,
                              ),
                            ),
                            child: TabBarView(
                              controller: _tabController,
                              //children: myTabs,
                              children: <Widget>[
                                Tab(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height,
                                    child: Column(
                                      children: <Widget>[
                                        Flexible(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 10, right: 10),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.grey.shade200),
                                            ),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelText: "Kredi Tutarı",
                                                labelStyle: TextStyle(
                                                    color: Colors.black54),
                                                focusedBorder: InputBorder.none,
                                                border: InputBorder.none,
                                                contentPadding:
                                                EdgeInsets.only(left: 10),
                                              ),
                                              keyboardType:
                                              TextInputType.number,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Flexible(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.only(
                                              left: 10,
                                              right: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.grey.shade200),
                                            ),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                                hint: Padding(
                                                  padding:
                                                  EdgeInsets.only(left: 10),
                                                  child: Text("Vade"),
                                                ),
                                                value: dropdownValue,
                                                elevation: 16,
                                                style: TextStyle(
                                                    color: Colors.black),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    dropdownValue = newValue;
                                                  });
                                                },
                                                items: _credits.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left: 10),
                                                          child: Text(value),
                                                        ),
                                                      );
                                                    }).toList(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Flexible(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.only(
                                                left: 10,
                                                right: 10,
                                                bottom: 10),
                                            color: Colors.blue,
                                            child: FlatButton(
                                              child: Text(
                                                "Konut Kredisi Hesapla",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Column(
                                    children: <Widget>[
                                      Flexible(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 10, top: 10, right: 10),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.grey.shade200),
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              labelText: "Kredi Tutarı",
                                              labelStyle: TextStyle(
                                                  color: Colors.black54),
                                              focusedBorder: InputBorder.none,
                                              border: InputBorder.none,
                                              contentPadding:
                                              EdgeInsets.only(left: 10),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Flexible(
                                        child: Container(
                                          width:
                                          MediaQuery.of(context).size.width,
                                          margin: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.grey.shade200),
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                              hint: Padding(
                                                padding:
                                                EdgeInsets.only(left: 10),
                                                child: Text("Vade"),
                                              ),
                                              value: dropdownValue,
                                              elevation: 16,
                                              style: TextStyle(
                                                  color: Colors.black),
                                              onChanged: (String newValue) {
                                                setState(() {
                                                  dropdownValue = newValue;
                                                });
                                              },
                                              items: _credits.map<
                                                  DropdownMenuItem<String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left: 10),
                                                        child: Text(value),
                                                      ),
                                                    );
                                                  }).toList(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Flexible(
                                        child: Container(
                                          width:
                                          MediaQuery.of(context).size.width,
                                          margin: EdgeInsets.only(
                                              left: 10, right: 10, bottom: 10),
                                          color: Colors.blue,
                                          child: FlatButton(
                                            child: Text(
                                              "İhtiyaç Kredisi Hesapla",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
