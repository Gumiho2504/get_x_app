import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/job_application.dart';

class JobApplicationController extends GetxController {
  var jobApplication = JobApplication(
    jobId: '',
    title: '',
    company: '',
    location: '',
    salary: 0,
    description: '',
    requirements: [],
    applicants: [],
  ).obs;

  @override
  void onInit() {
    super.onInit();
    fetchJobApplication();
  }

  void fetchJobApplication() async {
    String jsonString = await rootBundle.loadString('assets/job_application.json');
    final jsonResponse = json.decode(jsonString);
    jobApplication.value = JobApplication.fromJson(jsonResponse);
  }
}

final jobFilter  = ["UI Designer","UX Designer","Front End","Java Developer","Manager"];
