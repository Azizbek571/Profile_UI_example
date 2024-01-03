import 'package:profile_ui_fixed_original/config/imports.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          const Positioned(
          top:40, left:30, child: Icon(Icons.arrow_back,color:Colors.white)
         ),  
        Center(
      child: Padding(
        padding: EdgeInsets.only(left: 50, top: 20, bottom: 20, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/man.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Peter Smith',
              style: TextStyle(
                  color: Color.fromARGB(255, 214, 207, 207),
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
            SizedBox(height: 5),
            Text(
              'Ibragimov@hotmail.com',
              style: TextStyle(
                  color: const Color.fromARGB(255, 202, 194, 194),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),

            ProfileMenu(),
            SizedBox(height: 20),
            ProfileMenuBottom(
            text: 'Your order history',
            icon: Icons.shopping_bag_outlined,
            arrowShown: true,
            ), 
              SizedBox(height: 20),
            ProfileMenuBottom(
            text: 'Help and support',
            icon: Icons.help_outline,
            arrowShown: true,
            ), 
              SizedBox(height: 20),
            ProfileMenuBottom(
            text: 'Load gift voucher',
            icon: Icons.card_giftcard,
            arrowShown: true,
            ),
              SizedBox(height: 20),
            ProfileMenuBottom(
            text: 'Logout',
            icon: Icons.logout,
            arrowShown: false,
            ), 
          ],
        ),
      ),
    ),
      ],
    );
  }
}

