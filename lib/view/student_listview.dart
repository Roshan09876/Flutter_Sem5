import 'package:flutter/material.dart';
import 'package:secondapp/app/routes/app_route.dart';
import 'package:secondapp/model/student.dart';

class Student_ListView extends StatefulWidget {
  const Student_ListView({super.key});

  @override
  State<Student_ListView> createState() => _Student_ListViewState();
}

class _Student_ListViewState extends State<Student_ListView> {
//   void _deleteStudent(int index) {
//   setState(() {
//     lstStudents.removeAt(index);
//   });
// }

  final _formkey = GlobalKey<FormState>();
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();

  String? city;
  final items = [
    const DropdownMenuItem(
      value: ('Kathmandu'),
      child: Text('Kathmandu'),
    ),
    const DropdownMenuItem(
      value: ('Pokhara'),
      child: Text('Pokhara'),
    ),
    const DropdownMenuItem(
      value: ('Chitwan'),
      child: Text('Chitwan'),
    ),
  ];

  final _gap = const SizedBox(
    height: 8,
  );
  List<Student> lstStudents = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student ListView')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: Column(children: [
            TextFormField(
              controller: fnameController,
              decoration: InputDecoration(
                  labelText: 'FirstName', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: lnameController,
              decoration: InputDecoration(
                  labelText: 'LastName', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            _gap,
            DropdownButtonFormField(
              icon: const Icon(Icons.arrow_downward),
              items: items,
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
              hint: const Text('Select City'),
              decoration: const InputDecoration(
                labelText: 'Select City',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null) {
                  return 'Please select city';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      if (_formkey.currentState!.validate() && city != null) {
                        Student student = Student(
                            fname: fnameController.text,
                            lname: lnameController.text,
                            city: city!);

                        setState(() {
                          lstStudents.add(student);
                        });
                      }
                    },
                    child: Text(
                      'Add Student',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ))),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoute.displaystudentRoute,
                          arguments: lstStudents);
                    },
                    child: Text(
                      'View Students',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ))),
            SizedBox(
              height: 10,
            ),
            MyWidget(lstStudents: lstStudents)
          ]),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.lstStudents,
  });

  final List<Student> lstStudents;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: lstStudents.isNotEmpty
          ? ListView.builder(
              itemCount: lstStudents.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 1),
                          content: Text(
                            '${lstStudents[index].fname} ${lstStudents[index].lname} is Clicked',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )));
                    },
                    onDoubleTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 1),
                          content: Text(
                            '${lstStudents[index].fname} ${lstStudents[index].lname} is Clicked',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )));
                    },
                    onLongPress: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.blue,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 1),
                          content: Text(
                            '${lstStudents[index].fname} ${lstStudents[index].lname} is Clicked',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )));
                    },
                    child: Stack(children: [
                      Container(color: Colors.black,),
                      Card(
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(children: [
                          Text(
                              '${lstStudents[index].fname} ${lstStudents[index].lname}'),
                          Text(lstStudents[index].city),
                        ]),
                      ),
                    ),
                    ],)
                  ),
                );
              })
          : const Text('No Data'),
    );
  }
}
