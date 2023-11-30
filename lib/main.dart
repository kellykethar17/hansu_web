import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Hansu Mobile and Intelligent Innovations',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans'
        )
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('lib/assets/logo.png',fit: BoxFit.fitHeight,),


          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'About'),
              Tab(text: 'Farmers Companion'),
              Tab(text: 'Services'),
              Tab(text: 'Contact'),
            ],
          ),
        ),
        body: Container(

          child: const TabBarView(
            children: [
              Home(),
              About(),
              FarmersCompanion(),
              Services(),
              Contact(),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scrollable(
         viewportBuilder: (BuildContext context, ViewportOffset position)
         {
           Scaffold(
             appBar: AppBar(
               title: const Center(child: Text('Hansu Mobile And Intelligent Innovations')),
             ),
             body:  Center(
               child: Card(
                 margin: const EdgeInsets.all(20),
                 child: Column(
                   mainAxisSize: MainAxisSize.max,
                   children: [
                     ListTile(
                       title: Image.asset('lib/assets/kk.png'),
                     ),
                     const Row(
                       children: [
                         Expanded(child: About(),),
                         Expanded(child: Services())

                       ],
                     ),
                   ],
                 ),
               ),
             ),
           );

      },
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 600,
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                'ABOUT HANSU',
                style: TextStyle(
                    fontWeight: FontWeight.w800, fontSize: 25, height: 0.9),
              ),
            ),
            SizedBox(height: 30),
               Padding(
                 padding: EdgeInsets.all(2.0),
                 child:Text('Hansu Mobile Innovations is a software development company located at Mission, Mbale, Uganda. '
                     'It is one of leading companies using deep computer science and technical insights to solve some of the societies pressing challenges at scale using mobile technologies and artificial intelligence. '
                     'Our mission is to develop secure, scalable and delighting enterprise solutions on both web and mobile around the global, to support and believe in research, entrepreneurship and innovations which enable us implement high tech solutions with an AI first approach.',
                 style: TextStyle(fontSize: 15, height: 1.7),
                 ),
               ),
          ],
        ),
      ),
    );
  }
}

class FarmersCompanion extends StatelessWidget {
  const FarmersCompanion({super.key});
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return  Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('FarmersCompanion',)),
          ),
          body: const Column(
            children: [
              Text('Farmers Companion (formerly Fapp), is a smart solution to revolutionize Agriculture, '
                  'stop hunger and improve the economic well-being of African farmers.',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20, height: 0.8),),
              SizedBox(height: 30,),
              Text('Our solution is smart and intelligent to provides timely, context-specific information that enables smallholder farmers and those who support them to identify, suggest treatment, '
                  'track and share information about incidences of pests and diseases on African farms and gardens.'
                'It uses machine learning on Android to help farmers fight pests and disease affecting their crops. '
                  'It is designed to work both on and offline.',
                style: TextStyle(fontSize: 15,height: 1.4),),
              Text('Why Farmers Companion?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, height: 0.8),),


            ],

          ),

        );
      }
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 600,

      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Services',
            style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 25, height: 0.9
            ),),
            SizedBox(height: 30,),
            Text('We offer custom made mobile phone applications to help your business thrive.'
              'We also do research in mobile computing to better improve ease of use, accessibility and security.'
              'We support local startups so as to have more innovators in the software industry in Mbale region and beyond.'
              'As a way of achieving its motives of social corporate responsibility, it supports a nonprofit organization Django Girls that empowers women into the technology sector in Mbale region and GDG Mbale with space, mentors and guidance.',
              style: TextStyle(fontSize: 15, height: 1.7),),
          ],
        ),
      )
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Contact'),
    );
  }
}


