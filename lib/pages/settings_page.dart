import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var _value = 4.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Select the OTP digits required'),
              SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.orange,
                    inactiveTrackColor: Colors.grey,
                    trackShape: RoundedRectSliderTrackShape(),
                    trackHeight: 4.0,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    thumbColor: Colors.amberAccent,
                    overlayColor: Colors.amber.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                    tickMarkShape: RoundSliderTickMarkShape(),
                    activeTickMarkColor: Colors.amber[700],
                    inactiveTickMarkColor: Colors.black,
                    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                    valueIndicatorColor: Colors.amberAccent,
                    valueIndicatorTextStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  child: Slider(
                    min: 4.0,
                    max: 6.0,
                    divisions: _value.toInt().round(),
                    label: '${_value.round()}',
                    value: _value,
                    onChanged: (value) {
                      setState(() {
                        print(value);
                        _value = value;
                      });
                    },
                  )),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
                  child: Text(
                    _value.toInt().round().toString(),
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,),
                  ),
                ),
                decoration: BoxDecoration(border: Border.all(
                  color: Colors.orange, //                   <--- border color
                  width: 4.0,
                ),
              ),),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(
                  child: Text('Generate',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                  color: Colors.orange,
                  minWidth: MediaQuery.of(context).size.width,
                    onPressed: ()=>print('generate otp')),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(height: 10.0, thickness: 3.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
