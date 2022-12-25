import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NinjaCard1() ,
  ));
}
class NinjaCard1 extends StatefulWidget {
  const NinjaCard1({Key? key}) : super(key: key);

  @override
  State<NinjaCard1> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard1> {

  int ninjaRank = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: const Text('Ninja Card'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        elevation: 10,
      ),


      body: Padding(
        padding:const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:CircleAvatar(
                radius: 60,
                backgroundColor: Colors.brown[300],
                backgroundImage:const NetworkImage('https://static.wikia.nocookie.net/p__/images/6/60/ChibiLee.png/revision/latest?cb=20210521051634&path-prefix=protagonist'),
              ),
            ),
            const Divider(
              height: 40,
              color: Colors.brown,
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Rock Lee',
              style: TextStyle(
                color: Colors.brown[500],
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Current Level',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Chunin',
              style: TextStyle(
                color: Colors.brown[500],
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.email,
                  color: Colors.brown[400],
                ),
                const SizedBox(width: 10,),
                Text(
                  'rocklee@konoha.com',
                  style: TextStyle(
                    color: Colors.brown[400],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Text('Rank',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5,),
            Text('$ninjaRank',
              style: TextStyle(
                color: Colors.brown[500],
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              height: 40,
              color: Colors.brown,
            ),
            const Center(
              child:  Text('Married to',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 40,
                ),
              ),
            ),
            Center(child:CircleAvatar(
              backgroundColor: Colors.brown[300],
              backgroundImage:const NetworkImage('https://i.pinimg.com/736x/cb/02/e9/cb02e97b60e66cddc82cb01aac035aa8.jpg'),
              radius: 50,
            ),),
            Center(
              child: Text('Tenten',
                style: TextStyle(
                  color: Colors.brown[500],
                  fontSize: 30,
                ),
              ),
            ),
            Center(
              child:ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.brown,
                    backgroundColor: Colors.brown,
                    elevation: 20,
                    minimumSize: Size(20, 30),
                ),
                onPressed: (){
                setState(() {
                  ninjaRank=0;
                });
              },
                child: Text('Return to 0',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),

            ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          const SizedBox(width: 19.428571,),
          FloatingActionButton(
            splashColor: Colors.greenAccent,
            elevation: 20,
            tooltip: 'increment',
            onPressed: (){
              setState(() {
                ninjaRank++;
              });
            },
            child: Icon(Icons.plus_one_sharp),
            backgroundColor: Colors.brown,
          ),
          const SizedBox(width: 280,)
          ,
          FloatingActionButton(
            splashColor: Colors.redAccent,
            tooltip: 'decrement',
            elevation: 20,
            onPressed: (){
              setState(() {
                ninjaRank--;
              });
            },
            child: Icon(Icons.exposure_minus_1_sharp),
            backgroundColor: Colors.brown,
          ),
        ],
      ),
    );

    // MaterialStateProperty<Color> getColor(Color color, Color color1)
    // {
    //   final getColor = (Set<MaterialState> states){
    //     if(states.contains(MaterialState.pressed)){
    //       return color1;
    //     }
    //     else
    //       {
    //         return color;
    //       }
    //   };
    // }
  }
}
