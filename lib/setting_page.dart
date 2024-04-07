import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});




  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final List<String> fast_items = [
    'WHO',
    'DGE',
  ];
  final List<String> sec_items = [
    'cm',
    'ft',
  ];
  final List<String> tri_items = [
    'kg',
    'lb',
    'st'
  ];
  bool isselected = false;
  bool light = false;
  String? selectedunite;
  String? selectedunite2;
  String? selectedunite3;

  @override

  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenwidth = mediaQueryData.size.width;
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Settings",style: TextStyle(color: Colors.black),),
    backgroundColor: Colors.grey.shade200,
    toolbarHeight: 60,),
      body: Column(
  mainAxisAlignment: MainAxisAlignment.start ,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("Evaliation",style: TextStyle(color: Colors.brown.shade400,fontSize: 13),),
              ),

               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: SizedBox(
                  width: 180,
                   child: DropdownButtonHideUnderline(
                     child: Container(
                       decoration: BoxDecoration(

                         border: Border.all(width: .5,color: isselected ? Colors.purple : Colors.black ),
                         borderRadius: BorderRadius.circular(5),),
                       child: DropdownButton2<String>(
                         isExpanded: true,
                         hint: const Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text(
                             'WHO',
                             style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 15),
                             overflow: TextOverflow.ellipsis,
                           ),
                         ),
                         items: fast_items.map((String item) => DropdownMenuItem<String>(
                           value: item,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: SizedBox(
                               width: 180,

                               child: Text(
                                 item,
                                 style: const TextStyle(
                                     color: Colors.black,
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
                           //  _saveSelectedValue(value);
                           });
                         },

                         iconStyleData: const IconStyleData(
                           icon: Icon(
                             Icons.arrow_drop_down,
                             size: 25,
                           ),
                           iconSize: 14,
                           iconEnabledColor: Colors.black,
                           iconDisabledColor: Colors.black,
                         ),
                         dropdownStyleData: DropdownStyleData(
                           width: 180,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.grey.shade200,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                      const Text("Adults only",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                     Switch(
    // This bool value toggles the switch.
    value: light,
    activeColor: Colors.purple,
    onChanged: (bool value) {
    // This is called when the user toggles the switch.
    setState(() {
    light = value;
    });
    },
    ),
                   ],
                 ),
               ),
               Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Units",style: TextStyle(color: Colors.brown.shade400,fontSize: 13),),
          ),
               const SizedBox(height: 20,),
               Row(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 180,
                  child: DropdownButtonHideUnderline(
                    child: Container(
                      decoration: BoxDecoration(

                        border: Border.all(width: .5,color: isselected ? Colors.purple : Colors.black ),
                        borderRadius: BorderRadius.circular(5),),
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'ft',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        items: sec_items.map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: SizedBox(
                            width: 100,

                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                item,
                                style: const TextStyle(
                                    color: Colors.black,
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
                            //  _saveSelectedValue(value);
                          });
                        },

                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: 25,
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.black,
                          iconDisabledColor: Colors.black,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 180,
                  child: DropdownButtonHideUnderline(
                    child: Container(
                      decoration: BoxDecoration(

                        border: Border.all(width: .5,color: isselected ? Colors.purple : Colors.black ),
                        borderRadius: BorderRadius.circular(5),),
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'kg',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        items: tri_items.map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SizedBox(
                              width: 150,

                              child: Text(
                                item,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ))
                            .toList(),
                        value: selectedunite3,
                        onChanged: (String? value) {
                          setState(() {
                            selectedunite3 = value!;
                            //  _saveSelectedValue(value);
                          });
                        },

                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: 25,
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.black,
                          iconDisabledColor: Colors.black,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
               Padding(
            padding: const EdgeInsets.only(left: 20,top: 20),
            child: Text("More",style: TextStyle(color: Colors.brown.shade400,fontSize: 13),),
          ),
               const Padding(
                 padding: EdgeInsets.all(20),
                 child: Text("Remove ads",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
               ),
               const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Help & feedback",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
          ),
               const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Share this app",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
          ),
               const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Rate this app",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
          ),
               const Padding(
            padding: EdgeInsets.all(20),
            child: Text("More apps",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
          ),
               const SizedBox(height: 20,),
               Row(
                 children: [
                   SizedBox(width: screenwidth*.42,),
                   const Text("1.7.6(1472)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                 ],
               ),




        ],

      ),



    );

  }
}