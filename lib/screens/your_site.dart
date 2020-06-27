import 'package:flutter/material.dart';
import 'package:word_time/services/world_time.dart';

class YourPlace extends StatefulWidget {
  @override
  _YourPlaceState createState() => _YourPlaceState();
}

class _YourPlaceState extends State<YourPlace> {
   List<WorldTime> places = [
     WorldTime(url: 'Europe/London', place: 'London', flag: 'uk.png'),
     WorldTime(url: 'Europe/Berlin', place: 'Berlin', flag: 'germany.png'),
     WorldTime(url: 'Africa/Cairo', place: 'Cairo', flag: 'egypt.png'),
     WorldTime(url: 'Africa/Nairobi', place: 'Nairobi', flag: 'kenya.png'),
     WorldTime(url: 'America/New_York', place: 'New York', flag: 'usa.png'),
     WorldTime(url: 'Asia/Shanghai', place: 'Shanghai', flag: 'china.png'),
   ];

void updateClock(index) async{
  WorldTime instance2 = places[index];
  await instance2.getWatch();

  Navigator.pop(context, {
    'place': instance2.place,
    'flag': instance2.flag,
    'clock': instance2.clock ,
    'isDark': instance2.isDark,
  });
}

  @override
  Widget build(BuildContext context) {
    print('builder run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('select your site'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
              child: Card(
                child: ListTile(
                  onTap: (){
                    updateClock(index);
                  },
                  title: Text(places[index].place),
                  leading: CircleAvatar(
                    backgroundImage:AssetImage(
                      'lib/assets/pics/${places[index].flag}'
                    ), 
                  ),
                ),
              ),
            );
          },
      ),
    );
  }
}