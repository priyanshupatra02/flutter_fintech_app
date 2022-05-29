import 'package:flutter_fintech_app/utilities/import.dart';


class CardsPage extends StatefulWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child:  Text("card"),
      ),
    );
  }
}
