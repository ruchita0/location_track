import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool _isEditMode = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Where is my Bus?'),
      ),
      // appBar: AppBar(
      //   title: Text('Edit Profile'),
      //   actions: [
      //     _isEditMode
      //         ? IconButton(
      //             icon: Icon(Icons.save),
      //             onPressed: () {
      //               // Save changes
      //               _toggleEditMode();
      //             },
      //           )
      //         : IconButton(
      //             icon: Icon(Icons.edit),
      //             onPressed: () {
      //               // Enable editing
      //               _toggleEditMode();
      //             },
      //           ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildProfilePicture(),
              SizedBox(height: 20),
              _buildNameField(),
              SizedBox(height: 20),
              _buildLastNameField(),
              SizedBox(height: 20),
              _buildEmailField(),
              SizedBox(height: 20),
              _buildPasswordField(),
              SizedBox(height: 20),
              _buildConfirmPassField(),
              SizedBox(height: 20),
              _buildBottomButtons()
            ],
          ),
        ),
      ),
      //bottomNavigationBar: _buildBottomButtons(),
    );
  }

  Widget _buildProfilePicture() {
    // Replace the 'profile.svg' with the path to your profile picture
    return CircleAvatar(
      radius: 60,
      backgroundColor: Colors.grey[300],
      backgroundImage: AssetImage('images/profile1.png'),
    );
  }

  Widget _buildNameField() {
    return Center(
      child: Container(
        width: 250, // Adjust the width as per your requirement
        height: 40, // Adjust the height as per your requirement
        child: TextField(
          controller: _nameController,
          enabled: _isEditMode,
          decoration: InputDecoration(
            labelText: 'Name',
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple.shade100, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLastNameField() {
    return Center(
      child: Container(
        width: 250, // Adjust the width as per your requirement
        height: 40, // Adjust the height as per your requirement
        child: TextField(
          controller: _nameController,
          enabled: _isEditMode,
          decoration: InputDecoration(
            labelText: 'Last Name',
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple.shade100, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Container(
      width: 250, // Adjust the width as per your requirement
      height: 40, // Adjust the height as per your requirement
      child: TextField(
        controller: _emailController,
        enabled: _isEditMode,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Email',
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple.shade100, width: 2.0),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      width: 250, // Adjust the width as per your requirement
      height: 40, // Adjust the height as per your requirement
      child: TextField(
        controller: _passwordController,
        enabled: _isEditMode,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple.shade100, width: 2.0),
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmPassField() {
    return Container(
      width: 250, // Adjust the width as per your requirement
      height: 40, // Adjust the height as per your requirement
      child: TextField(
        controller: _passwordController,
        enabled: _isEditMode,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple.shade100, width: 2.0),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomButtons() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: _isEditMode ? null : _toggleEditMode,
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.purple.shade200),
            ),
            child: Text('Edit'),
          ),
          ElevatedButton(
            onPressed: _isEditMode ? _toggleEditMode : null,
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.purple.shade100),
            ),
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  void _toggleEditMode() {
    setState(() {
      _isEditMode = !_isEditMode;
    });
  }
}

void main() => runApp(MaterialApp(
      home: EditProfilePage(),
    ));
