import 'package:flutter/material.dart';
import 'package:secondapp/model/student.dart';

class DisplayStudents extends StatefulWidget {
  const DisplayStudents({super.key});

  @override
  State<DisplayStudents> createState() => _DisplayStudentsState();
}

class _DisplayStudentsState extends State<DisplayStudents> {
  void _deleteStudent(int index) {
    setState(() {
      lstStudents.removeAt(index);
    });
  }

  List<Student>  lstStudents = [];

  @override
  void didChangeDependencies() {
    //Recieve Students data from the previous screen
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Details')),
      body: lstStudents.isNotEmpty
          ? ListView.builder(
              itemCount: lstStudents.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(
                      '${lstStudents[index].fname} ${lstStudents[index].lname}'),
                  subtitle: Text(lstStudents[index].city),
                  trailing: Wrap(
                    spacing: 1,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            _deleteStudent(index);
                          },
                          icon: const Icon(Icons.delete)),
                    ],
                  ),
                  onTap: () {},
                );
              })
          : const Text('No Data'),
    );
  }
}
