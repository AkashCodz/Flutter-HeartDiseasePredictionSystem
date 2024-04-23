// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print, unused_import, use_build_context_synchronously, no_leading_underscores_for_local_identifiers, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_frontend/app_screens/result.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController age_ = TextEditingController();
  int? sex_;  
  TextEditingController cp_ = TextEditingController();
  TextEditingController trestbps_ = TextEditingController();
  TextEditingController chol_ = TextEditingController();
  TextEditingController fbs_ = TextEditingController();
  TextEditingController restecg_ = TextEditingController();
  TextEditingController thalach_ = TextEditingController();
  TextEditingController exang_ = TextEditingController();
  TextEditingController oldpeak_ = TextEditingController();
  TextEditingController slope_ = TextEditingController();
  TextEditingController ca_ = TextEditingController();
  TextEditingController thal_ = TextEditingController();

  static var client = http.Client();
  Future<dynamic> postRequest() async {
    var url = Uri.http("10.0.2.2:8000", "/api/");
    // var url = Uri.http("https://hdt-production.up.railway.app", "/api/");
    var data = {
      "age": age_.text,
      "sex": sex_,
      "cp": cp_.text,
      "trestbps": trestbps_.text,
      "chol": chol_.text,
      "fbs": fbs_.text,
      "restecg": restecg_.text,
      "thalach": thalach_.text,
      "exang": exang_.text,
      "oldpeak": oldpeak_.text,
      "slope": slope_.text,
      "ca": ca_.text,
      "thal": thal_.text,
    };
    var response = await client.post(url,
        body: json.encode(data), headers: {"Content-Type": "application/json"});
    if (response.statusCode == 201) {
      var dat = json.decode(response.body);
      return dat;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder1 = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40.0)));
    var styles = GoogleFonts.josefinSans(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
    var age = TextFormField(
      controller: age_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        hintText: 'Enter the value of age ',
        filled: true,
        fillColor: backgroundcolor,
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        labelText: 'Age',
        labelStyle: lablStyl(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter the number";
        }
        else{
        return null;
        }
      },
    );
    var _value = -1;
    var sex = DropdownButtonFormField(
      dropdownColor: Colors.blueAccent,
      value: _value,
      style: GoogleFonts.josefinSans(
          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
      decoration: InputDecoration(
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        // labelText: 'Sex'
      ),
      items: [
        DropdownMenuItem(child: Text("Select the Gender"), value: -1),
        DropdownMenuItem(child: Text("Female"), value: 0),
        DropdownMenuItem(child: Text("Male"), value: 1)
      ],
      onChanged: (value) {
        setState(() {
          sex_ = value;
        });
      },
    );
    var cp = TextFormField(
      controller: cp_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        // hintText: 'Enter the value of cp ',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'cp',
        labelStyle: lablStyl(),
      ),
    );
    var trestbps = TextFormField(
      controller: trestbps_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        // hintText: 'Enter the value of trestbps',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'trestbps',
        labelStyle: lablStyl(),
      ),
    );
    var chol = TextFormField(
      controller: chol_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        // hintText: 'Enter the value of chol',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'chol',
        labelStyle: lablStyl(),
      ),
    );
    var fbs = TextFormField(
      controller: fbs_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        hintText: 'Enter the value of fbs',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'fbs',
        labelStyle: lablStyl(),
      ),
    );
    var restecg = TextFormField(
      controller: restecg_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        hintText: 'Enter the value of restecg',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'restecg',
        labelStyle: lablStyl(),
      ),
    );
    var thalach = TextFormField(
      controller: thalach_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        hintText: 'Enter the value of thalach',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'thalach',
        labelStyle: lablStyl(),
      ),
    );
    var exang = TextFormField(
      controller: exang_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        hintText: 'Enter the value of exang',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'exang',
        labelStyle: lablStyl(),
      ),
    );
    var oldpeak = TextFormField(
      controller: oldpeak_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        hintText: 'Enter the value of oldpeak',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'oldpeak',
        labelStyle: lablStyl(),
      ),
    );
    var slope = TextFormField(
      controller: slope_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        hintText: 'Enter the value of slope',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'slope',
        labelStyle: lablStyl(),
      ),
    );
    var ca = TextFormField(
      controller: ca_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        hintText: 'Enter the value of ca',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'ca',
        labelStyle: lablStyl(),
      ),
    );
    var thal = TextFormField(
      controller: thal_,
      keyboardType: TextInputType.number,
      style: styles,
      decoration: InputDecoration(
        hintText: 'Enter the value of thal',
        focusedBorder: outlineInputBorder1,
        enabledBorder: outlineInputBorder1,
        filled: true,
        fillColor: backgroundcolor,
        labelText: 'thal',
        labelStyle: lablStyl(),
      ),
    );

    // var styles2 = GoogleFonts.tangerine(fontSize: 50, fontWeight: FontWeight.bold,);
    var styles2 = GoogleFonts.merienda(
      fontSize: 30,
      fontWeight: FontWeight.w500,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Heart Disease Prediction System',
            ),
          ),
          // backgroundColor: Color.fromARGB(255, 160, 64, 255),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
                child: ListView(
              children: [
                Text("Welcome to my", style: styles2),
                Text(
                  "Prediction System!!",
                  style: styles2,
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        age,
                        SizedBox(height: 15),
                        sex,
                        SizedBox(height: 15),
                        cp,
                        SizedBox(height: 15),
                        trestbps,
                        SizedBox(height: 15),
                        chol,
                        SizedBox(height: 15),
                        fbs,
                        SizedBox(height: 15),
                        restecg,
                        SizedBox(height: 15),
                        thalach,
                        SizedBox(height: 15),
                        exang,
                        SizedBox(height: 15),
                        oldpeak,
                        SizedBox(height: 15),
                        slope,
                        SizedBox(height: 15),
                        ca,
                        SizedBox(height: 15),
                        thal,
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () async {
                      var pst = await postRequest();
                      var value = pst['Prediction'][0];
                      // print(value);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Result(value)));
                    },
                    child: Text("Register"))
              ],
            )),
          )),
    );
  }

  TextStyle lablStyl() => TextStyle(
        color: Colors.black, fontSize: 22,
        // fontWeight: FontWeight.bold
      );

  Color get backgroundcolor => Colors.white;
}
