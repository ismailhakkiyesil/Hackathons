import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Mergify',
          home: Scaffold(
            appBar: AppBar(
              title: Text('Mergify'),
              centerTitle: true,
            ),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(4),
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              crossAxisCount: 2,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                          GestureDetector(
                             onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NewsRoute()),
                          );
                        },
                           child: Center(
                        child: Image.asset('assets/images/news.jpg'),
                  ),
                 ),
                ],
              ),
              color: Colors.yellow,
            ),
            
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                      GestureDetector(
                         onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PsychRoute()),
                      );
                    },
                       child: Center(
                    child: Image.asset('assets/images/psych.jpg'),
                  ),
                 ),
                ],
              ),
              color: Colors.white,
            ),
            
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                      GestureDetector(
                         onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MovieRoute()),
                      );
                    },
                       child: Center(
                    child: Image.asset('assets/images/movies.jpg'),
                  ),
                 ),
                ],
              ),
              color: Colors.blue,
            ),
            
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                      GestureDetector(
                         onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookRoute()),
                      );
                    },
                       child: Center(
                    child: Image.asset('assets/images/book.jpg'),
  // Image.asset('assets/2x/images/movie.jpg')
                 // Center 2x
                  ),
                 ),
                ],
              ),
              color: Colors.yellow,
            ),
            
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                      GestureDetector(
                         onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SongRoute()),
                      );
                    },
                       child: Center(
                    child: Image.asset('assets/images/song.jpg'),
                  ),
                 ),
                ],
              ),
              color: Colors.pink,
            ),
            
             Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                      GestureDetector(
                         onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InertiaRoute()),
                      );
                    },
                       child: Center(
                    child: Image.asset('assets/images/logo.jpg'),
                  ),
                 ),
                ],
              ),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
class NewsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(8),
            width: screenSize.width,
            height: screenSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('News',style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: Text('We lost total 21 citizens.',)),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: Text('Total number of infected people increased to 947 due to covid-19.',)),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: Text('People with age of 65 and over are prohibited to get out of their house.',)),
              ],
            ),
          ),
        ),
    );
  }
}
class PsychRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Psychological Therapy"),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(8),
            width: screenSize.width,
            height: screenSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildTextFields(),
                new Container(
            child: new RaisedButton(
              child: Text('Find a Professional!'),
              onPressed: () {}, 
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
class MovieRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Suggestions"),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(8),
            width: screenSize.width,
            height: screenSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(alignment: Alignment.centerLeft, child: Text('Movie of The Day',style: TextStyle(fontSize: 20,color: Colors.blue),)),
                SizedBox(height: 20,),
                Container(
                  width: 250.0,
                  height: 300.0,
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/inception.jpg'),
                  fit: BoxFit.fill
      ),
    ),
  ),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: Text('Do you want to recommend ?',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))),
                Container(
                  child: new TextField(
                  decoration: new InputDecoration(
                  labelText: 'Your recommendation',
                    ),
                  style: TextStyle(fontSize: 13),
                  ),
                ),
                new Container(
                  child: new RaisedButton(
                    child: Text('Submit!',style: TextStyle(fontSize: 12),),
                    onPressed: () {}, 
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
class BookRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Suggestions"),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(8),
            width: screenSize.width,
            height: screenSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(alignment: Alignment.centerLeft, child: Text('Book of The Day',style: TextStyle(fontSize: 20,color: Colors.blue),)),
                SizedBox(height: 20,),
                Container(
                  width: 250.0,
                  height: 250.0,
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/1984.jpg'),
                  fit: BoxFit.fill
      ),
    ),
  ),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: Text('Do you want to recommend ?',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))),
                Container(
                  child: new TextField(
                  decoration: new InputDecoration(
                  labelText: 'Your recommendation',
                    ),
                  style: TextStyle(fontSize: 13),
                  ),
                ),
                new Container(
                  child: new RaisedButton(
                    child: Text('Submit!',style: TextStyle(fontSize: 12),),
                    onPressed: () {}, 
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
class SongRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Song Suggestions"),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(8),
            width: screenSize.width,
            height: screenSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(alignment: Alignment.centerLeft, child: Text('Song of The Day',style: TextStyle(fontSize: 20,color: Colors.blue),)),
                SizedBox(height: 20,),
                Container(
                  width: 250.0,
                  height: 250.0,
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/bohemian.jpg'),
                  fit: BoxFit.fill
      ),
    ),
  ),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: Text('Do you want to recommend ?',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))),
                Container(
                  child: new TextField(
                  decoration: new InputDecoration(
                  labelText: 'Your recommendation',
                    ),
                  style: TextStyle(fontSize: 13),
                  ),
                ),
                new Container(
                  child: new RaisedButton(
                    child: Text('Submit!',style: TextStyle(fontSize: 12),),
                    onPressed: () {}, 
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

class InertiaRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Mergify"),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(8),
            width: screenSize.width,
            height: screenSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('About Us',style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: Text('As 3 young people from team Inertia, we want people to have good times during quarantine and help them spend their time to improve themselves. Your support would be much appreciated!',)),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: Text('BTC: 189SQnmxYxZuZa5ngKcGcsQuYzQqu1pwHx',)),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: Text('BTC: 1549wUXor7j9ztHiei44dwdgEyGNJhdxxH',)),
              ],
            ),
          ),
        ),
    );
  }
}

 Widget _buildTextFields() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new TextField(
              decoration: new InputDecoration(
                labelText: 'Name'
              ),
            ),
          ),
          new Container(
            child: new TextField(
              decoration: new InputDecoration(
                labelText: 'Surname'
              ),
            ),
          ),
          new Container(
            child: new TextField(
              decoration: new InputDecoration(
                labelText: 'Phone'
              ),
            ),
          ),
          new Container(
            child: new TextField(
              decoration: new InputDecoration(
                labelText: 'E-Mail'
              ),
            ),
          ),
          new Container(
            child: new TextField(
              decoration: new InputDecoration(
                labelText: 'Topic'
              ),
            ),
          ),
        ],
      ),
    );
  }

   

