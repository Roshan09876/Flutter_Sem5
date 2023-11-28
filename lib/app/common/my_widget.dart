import 'package:flutter/material.dart';
import 'package:secondapp/model/student.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.lstStudents,
  });

  final List<Student> lstStudents;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: lstStudents.isNotEmpty ? ListView.builder(
        itemCount: lstStudents.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('${lstStudents[index].fname} ${lstStudents[index].lname}'),
            subtitle: Text(lstStudents[index].city),
            trailing: Wrap(
              spacing: 1,
              children: [
                IconButton(
                onPressed: (){},
                icon: const Icon(Icons.edit)),
                IconButton(
                onPressed: (){
                  // _deleteStudent(index);
                },
                icon: const Icon(Icons.delete)),
              ],
            ),
            onTap: (){},
          );
        }
        )
        : const Text('No Data'),
    );
  }
}
