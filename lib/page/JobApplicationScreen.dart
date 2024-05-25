import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_app/controllers/job_application_controller.dart';
import 'package:get_x_app/page/home_page.dart';
import 'package:iconsax/iconsax.dart';




class JobApplicationScreen extends StatelessWidget {
  final JobApplicationController jobApplicationController = Get.put(JobApplicationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Application'),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Iconsax.arrow_left),),
      ),
      body: Obx(() {
        if (jobApplicationController.jobApplication.value.jobId == '') {
          return Center(child: CircularProgressIndicator());
        } 
        else {
          var job = jobApplicationController.jobApplication.value;
         return Center(child: CircularProgressIndicator()); 
          // return ListView(
          //   padding: EdgeInsets.all(16.0),
          //   children: <Widget>[
          //     ListTile(
          //       title: Text(job.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          //       subtitle: Text(job.company, style: TextStyle(fontSize: 18)),
          //     ),
          //     SizedBox(height: 10),
          //     ListTile(
          //       title: Text('Location'),
          //       subtitle: Text(job.location),
          //     ),
          //     ListTile(
          //       title: Text('Salary'),
          //       subtitle: Text('\$${job.salary.toString()}'),
          //     ),
          //     ListTile(
          //       title: Text('Description'),
          //       subtitle: Text(job.description),
          //     ),
          //     ListTile(
          //       title: Text('Requirements'),
          //       subtitle: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: job.requirements.map((req) => Text('• $req')).toList(),
          //       ),
          //     ),
          //     ListTile(
          //       title: Text('Applicants'),
          //       subtitle: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: job.applicants.map((applicant) => ListTile(
          //           title: Text(applicant.name),
          //           subtitle: Text(applicant.email),
          //         )).toList(),
          //       ),
          //     ),
          //   ],
          // );
        }
      }),
    );
  }
}
