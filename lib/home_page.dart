
import 'package:bmi_calculetor_clone/Result%20chart.dart';
import 'package:bmi_calculetor_clone/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';




class Homepage extends StatefulWidget{





  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final TextEditingController ageController = TextEditingController();
  final TextEditingController feetController = TextEditingController();
  final TextEditingController inchController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController lbsController = TextEditingController();
  final TextEditingController stoneController = TextEditingController();
  final TextEditingController lbs2Controller = TextEditingController();
  final TextEditingController CmController = TextEditingController();

  void clearTextFields() {
    ageController.clear();
    feetController.clear();
    inchController.clear();
    weightController.clear();
    lbsController.clear();
    stoneController.clear();
    lbs2Controller.clear();
    CmController.clear();

  }

  double calculateBMI() {
    final double weight = double.tryParse(weightController.text) ?? 0;
    final double feet = double.tryParse(feetController.text) ?? 0;
    final double inch = double.tryParse(inchController.text) ?? 0;
    final double lbs = double.tryParse(lbsController.text) ?? 0;
    final double stone = double.tryParse(stoneController.text) ?? 0;
    final double lbs2 = double.tryParse(lbs2Controller.text) ?? 0;
    final double Cm = double.tryParse(CmController.text) ?? 0;



    final double heightInMeters = (feet * 12 + inch) * 0.0254;
    final double heightInMeters2 = ( Cm / 100);
    ///when select Feet
    if (selectedunite2 == "kg" && heightInMeters >0  ) {
      return weight / (heightInMeters * heightInMeters);

    }
    else if(selectedunite2 == "lb" && heightInMeters >0)
      {
        return (lbs/2.205) / (heightInMeters * heightInMeters);
      }
    else if(selectedunite2 == "st" && heightInMeters >0 )
      {
        return ((stone * 6.350293)+(lbs2/2.2049)) / (heightInMeters * heightInMeters);
      }


    ///whern select CM
    else if ( selectedunite == "cm" && heightInMeters2 > 0 && selectedunite2 == "kg" )
      {
        return weight / (heightInMeters2 * heightInMeters2);
      }
    else if(selectedunite2 == "lb" && selectedunite == "cm" && heightInMeters2 > 0 )
    {
      return (lbs/2.205) / (heightInMeters2 * heightInMeters2);
    }
    else if(selectedunite2 == "st" && selectedunite == "cm" && heightInMeters2 > 0 )
    {
      return ((stone * 6.350293)+(lbs2/2.2049)) / (heightInMeters2 * heightInMeters2);
    }

    else {
      return 0;
    }
  }

  final List<String> fast_items = [
    'cm',
    'ft',
  ];
  String? selectedunite;
  String? selectedunite2;
  bool isFemale = true;
  late SharedPreferences prefs;
  final List<String> second_items = [
    'kg',
    'lb',
    'st',
  ];
  @override


  void initState() {
    super.initState();
    _loadSelectedValue();
    _loadSelectedValue2();
    initSharedPreferences();
    // Load the saved value when the widget initializes
  }

///for the fast widget
  Future<void> _loadSelectedValue() async {
    final prefs = await SharedPreferences.getInstance();
    final savedValue = prefs.getString('_selectedunite');
    if (savedValue != null) {
      setState(() {
        selectedunite = savedValue;
      });
    }
  }
  Future<void> _saveSelectedValue(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('_selectedunite', value);
  }

  ///for second widget
  Future<void> _loadSelectedValue2() async {
    final prefs = await SharedPreferences.getInstance();
    final savedValue = prefs.getString('_selectedunite2');
    if (savedValue != null) {
      setState(() {
        selectedunite2 = savedValue;
      });
    }
  }
  Future<void> _saveSelectedValue2(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('_selectedunite2', value);
  }

  ///for gender widget
  Future<void> initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      isFemale = prefs.getBool('isFemale') ?? true;
    });
  }
  void toggleGender() {
    setState(() {
      isFemale = !isFemale;
      prefs.setBool('isFemale', isFemale);
    });
  }

  Widget build(BuildContext context) {
    final double weight = double.tryParse(weightController.text) ?? 0;
    final double age = double.tryParse(ageController.text) ?? 0;
    final double feet = double.tryParse(feetController.text) ?? 0;
    final double inch = double.tryParse(inchController.text) ?? 0;
    final double Cm = double.tryParse(CmController.text) ?? 0;
    final double lbs = double.tryParse(lbsController.text) ?? 0;
    final double stone = double.tryParse(stoneController.text) ?? 0;
    final double lbs2 = double.tryParse(lbs2Controller.text) ?? 0;
    final double heightInMeters = (feet * 12 + inch) * 0.0254;
    final double heightInMeters2 = ( Cm / 100);
    final double bmi = calculateBMI();
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenwidth = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.grey.shade200,
        toolbarHeight: 60,
        actions: [

          IconButton(
            icon: Icon(Icons.undo),
            onPressed: clearTextFields,
          ),
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('Settings'), value: 'Option 1' ),


              ];
            },
            offset: Offset(0, 50),
            //color: Colors.grey.shade200,
            elevation: 2,
            onSelected: (value) {
              if (value == 'Option 1') {
                // Navigate to the Settings page
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ));
              }
            },
          ),
        ],
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// fast items
          SizedBox(height: 5,),
          Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
        ),
        child: SizedBox(
          width: screenwidth,
          child: Row(
            children: [
              /// When select Feet
              if(selectedunite == 'ft')
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                      child: TextField(

                        textAlign: TextAlign.center,
                        keyboardType:  TextInputType.number,
                        inputFormatters: [
                         FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(3)
                        ],
                        controller: ageController,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12)),
                          label: Center(child: Text("Age")),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 80,
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: feetController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(4)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12)),
                            label: Padding(
                              padding: EdgeInsets.only(left: 75),
                              child: Text(
                                "'",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
//SizedBox(width: 8,),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 80,
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: inchController,
                          keyboardType:  TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(4)
                          ],
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12)),
                            label: Padding(
                              padding: EdgeInsets.only(left: 75),
                              child: Text(
                                '"',
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              /// When select Centimeters
              if(selectedunite == 'cm')
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType:  TextInputType.number,
                        controller: ageController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(3)
                        ],
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12)),
                          label: Center(child: Text("Age")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    SizedBox(
                      width: 170,
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: CmController,
                        keyboardType:  TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(6)
                        ],
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12)),
                          label: Center(
                              child: Text(
                                "Height",
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: 120,
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: Text(
                          'ft',
                          style: TextStyle(
                              color: Colors.cyan.shade200,
                              fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                        ),
                        items: fast_items
                            .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 32),
                            child: SizedBox(
                              width: 20,
                              child: Text(
                                item,
                                style: TextStyle(
                                    color: Colors.cyan.shade300,
                                    fontSize: 15),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ))
                            .toList(),
                        value: selectedunite,
                        onChanged: (String? value) {
                          setState(() {
                            selectedunite = value!;
                            _saveSelectedValue(value);
                          });
                        },

                        iconStyleData: IconStyleData(
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: 25,
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.grey.shade300,
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.grey.shade200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),


          /// second items
          SizedBox(height: 20,),
          Padding(
          padding:  EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: SizedBox(
            width: screenwidth,
            child: Row(
              children: [
                if (selectedunite2 == 'kg')
                  Row(
                    children: [
                      SizedBox(
            width: 90,
            child: Padding(
              padding: const EdgeInsets.only(left: 5,top: 5),
              child: Center(
                child: InkWell(
                  onTap: toggleGender,
                  child: Image.asset(
                    isFemale ? 'assets/images/image1.png' : 'assets/images/image2.png',
                    width: 58,
                    height: 60,
                  ),
                ),
              ),
            ),
          ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 170,
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          controller: weightController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(6)
                          ],
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12)),
                            label: Center(
                                child: Text(
                                  "Weight",
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                if(selectedunite2 == "lb")
                  Row(
                    children: [
                      SizedBox(
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: Center(
                            child: InkWell(
                              onTap: toggleGender,
                              child: Image.asset(
                                isFemale ? 'assets/images/image1.png' : 'assets/images/image2.png',
                                width: 58,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 170,
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: lbsController,
                          keyboardType:  TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(6)
                          ],
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12)),
                            label: Center(
                                child: Text(
                                  "Weight",
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                if(selectedunite2 == 'st')
                  Row(
                    children: [
                      SizedBox(
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: Center(
                            child: InkWell(
                              onTap: toggleGender,
                              child: Image.asset(
                                isFemale ? 'assets/images/image1.png' : 'assets/images/image2.png',
                                width: 58,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 80,
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType:  TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4)
                            ],
                            controller: stoneController,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12)),
                              label: Center(
                                child: Text(
                                  "st",

                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
//SizedBox(width: 8,),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: SizedBox(
                          width: 80,
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType:  TextInputType.number,
                            controller: lbs2Controller,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4)
                            ],
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12)),
                              label: Center(
                                child: Text(
                                  'lb',
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                SizedBox(width: 5,),
                SizedBox(
                  width: 120,
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: Text(
                          'kg',
                          style: TextStyle(
                              color: Colors.cyan.shade200,
                              fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                        ),
                        items: second_items
                            .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30,top: 15),
                            child: SizedBox(
                              width: 20,
                              child: Text(
                                item,
                                style: TextStyle(
                                    color: Colors.cyan.shade200,
                                    fontSize: 15),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ))
                            .toList(),
                        value: selectedunite2,
                        onChanged: (String? value) {
                          setState(() {
                            selectedunite2 = value!;
                            _saveSelectedValue2(value);
                          });
                        },

                        iconStyleData: IconStyleData(
                          icon: Padding(
                            padding: const EdgeInsets.only(top: 15,right: 5),
                            child: const Icon(
                              Icons.arrow_drop_down,
                              size: 25,
                            ),
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.grey.shade300,
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.grey.shade200,
                          ),
                        ),

                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
          SizedBox(height: 55,),

          /// third items ( Result Chart)
          ResultChart(
            pointerValue: bmi,
            age: age,
            gender: isFemale,
            heighforfeet:  heightInMeters,
            heighforcm: heightInMeters2,
            selecteditems: selectedunite,
            selecteditems2: selectedunite2,
            forkg: weight,
            forlb:  lbs,
            forst: stone,
            forlb2: lbs2,

           // normalwightlow: normalweightlow(),
          ),
        ],
      ),
    );

  }


}
