import 'package:flutter_fintech_app/utilities/import.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 370,
      height: 80,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            color: Colors.red,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                height: 10,
                width: 55,
              ),
              Container(
                color: Colors.red,
                height: 10,
                width: 55,
              ),
            ],
          ),
          Spacer(),
          Container(
            color: Colors.red,
            height: 55,
            width: 55,
          ),
        ],
      ),
    );
  }
}
