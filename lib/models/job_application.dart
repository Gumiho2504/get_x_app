import 'dart:convert';

class JobApplication {
  String jobId;
  String title;
  String company;
  String location;
  int salary;
  String description;
  List<String> requirements;
  List<Applicant> applicants;

  JobApplication({
    required this.jobId,
    required this.title,
    required this.company,
    required this.location,
    required this.salary,
    required this.description,
    required this.requirements,
    required this.applicants,
  });

  factory JobApplication.fromJson(Map<String, dynamic> json) {
    var requirementsFromJson = json['requirements'];
    List<String> requirementsList = requirementsFromJson.cast<String>();

    var applicantsFromJson = json['applicants'] as List;
    List<Applicant> applicantsList = applicantsFromJson.map((i) => Applicant.fromJson(i)).toList();

    return JobApplication(
      jobId: json['jobId'],
      title: json['title'],
      company: json['company'],
      location: json['location'],
      salary: json['salary'],
      description: json['description'],
      requirements: requirementsList,
      applicants: applicantsList,
    );
  }
}

class Applicant {
  String applicantId;
  String name;
  String email;
  String resume;
  String coverLetter;

  Applicant({
    required this.applicantId,
    required this.name,
    required this.email,
    required this.resume,
    required this.coverLetter,
  });

  factory Applicant.fromJson(Map<String, dynamic> json) {
    return Applicant(
      applicantId: json['applicantId'],
      name: json['name'],
      email: json['email'],
      resume: json['resume'],
      coverLetter: json['coverLetter'],
    );
  }
}
