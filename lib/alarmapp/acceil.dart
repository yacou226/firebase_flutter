import 'package:firestoretest/alarmapp/clock_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Acceil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();

    late  var formattedTime = DateFormat('HH: mm').format(now);
    late  var formatedDate=DateFormat('EEE, d MMM').format(now);
    late String timezoneString=now.timeZoneOffset.toString().split('').first;
    late var offsetSign='';
    if(!timezoneString.startsWith("-"))offsetSign='+';
    //print(timezoneString);
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [

          buildMenuButton('clock','assets/clock_icon.png'),
            const SizedBox(height: 5,),
            buildMenuButton('Timer','assets/timer_icon.png'),
            const SizedBox(height: 5,),
            buildMenuButton('Alarm','assets/alarm_icon.png'),
            const SizedBox(height: 5,),
            buildMenuButton('Alarm','assets/add_alarm.png'),

        ],),
        const VerticalDivider(
          color: Colors.white54,
          width: 1,
        ),
        Expanded(

          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 64),
            alignment: Alignment.center,
            color:const Color(0xFF2D2F41) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children:  [
               const  SizedBox(height: 20,),
                Text('Clock',
                  style:Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.white,fontSize: 24.0
                  )
                ),
              const   SizedBox(
                  height: 20.0,
                ),
                Text(formattedTime,
                    style:Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,fontSize: 40.0
                    )
                ),
                Text(formatedDate,
                    style:Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,fontSize: 20.0
                    )
                ),
                const  SizedBox(height: 50,),
               const  Padding(
                   padding:  EdgeInsets.all(15.0),
                   child:  ClockView(),
                 ),
               const  SizedBox(height: 30,),
                Text('Timezone',
                    style:Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,fontSize: 24.0
                    )
                ),
               const  SizedBox(height: 16,),
                Row(
                  children:  [
                   const  Icon(Icons.language,color: Colors.white,),
                    const SizedBox(width: 16,),

                    Text('UTC'+offsetSign+timezoneString,
                        style:Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,fontSize: 14.0
                        )
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  FlatButton buildMenuButton(String title, String image) {
    return FlatButton(onPressed: (){},
            child: Column(
              children:  [
                Image.asset(image ?? ""),
                const SizedBox(height: 16,),
                 Text(title ?? "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0
                  ),
                )
              ],
            ));
  }
}

