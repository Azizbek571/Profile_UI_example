import 'package:profile_ui_fixed_original/config/imports.dart';

class ProfileMenuBottom extends StatelessWidget {
  ProfileMenuBottom({
  required this.text, 
  required this.icon,
  required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      height: 50,
      width: 500,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Icon(icon,
                    size: 35, color: Colors.black),
              ),
              SizedBox(width: 20),
              Text(
                '$text',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ],
          ),
          arrowShown ? Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.arrow_forward, size: 35, color: Colors.black),
          ): Container(),
        ],
      ),
    );
  }
}
