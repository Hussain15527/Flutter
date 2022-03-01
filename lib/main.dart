import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(height: 40),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/pL_GRk0TDLhVRODmes9n49PZZk8U1UyV_9fILUxHe9pV1vgQqrC45pxm5TtuPzQKh5ro3XtzfT5c39iBaPfrIedlw2R9bpG06nazfMiHnoiELcHAibQvqUIb6GFl9Ken05XtFAahHXFesOcMSOQZ-E_Mypp7T5inVuYJS7_kB9Z2f2YA-L9NcB1uHn4ItTumhr_1-iuTVNsvNLrG03Rf36aICV_SLv0UU3bARZdYzDCCLEoP2Q_Iv5nNrbN5TD_kMNosaQ_8tY4GKz7mPcXfXy_eglTIV8b1CGxWxA7bfesxUGCDaP94lde0xsdMSnBf7NVILsTfh1bBKOskAf9BGQYAlQizUFAGzzFgWssTjwLfJ6AfeApEeEx_gDbIb83puhsKEGWbVWcwspclwhP7fbic-zqfkpc43Vt9Zy1epNzbNKoQZ-qWT4XlszClWLa_7TnbS0IU_jbU3jvBfx4F5OSwxt2ZyBvLzqmLEzlmHWXPY6wVuVt9v8OHYdxrvqeEw64oQdzosER-L4LjPAlhkvO0w7BTNiYAHdP03P-AOxlVTugS0QZGpsHdYFVcqVrJdm8VC5c8J_FK4jqlhM-C4GA1t9fLaCylbiRdJazzk5vla6LRCoWVUxT3r7fSiS2BrxlzD3MEqc79pHNzBlM0PkqabyP0pyi-iYCEWtWr9ScxHrJvaSUwaTQ_smgst2L4Wexqp610tJ8RPjqMrsLKGrDy=w669-h893-no?authuser=0'),
                radius: 50,
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),

            Text(
              'NAME:',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
//            SizedBox(height: 10),
            Text(
              'Mujtaba Hussain',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Proficiency:',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            Text(
              '$counter',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Current mission:',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            Text(
              '#100DaysOfCode',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  'mujtabah258@gmail.com',
                  style: TextStyle(
                      color: Colors.white30,
                      fontSize: 24,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 94,
            ),
            Row(
              children: [
                ElevatedButton(
                  child: Text('+', style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 30),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                ),
                SizedBox(width: 160,),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter=0;
                    });
                  },
                  child: Text(
                    'reset',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      backgroundColor: Colors.grey[900],
    );
  }
}
