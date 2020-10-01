import 'dart:html';

class Data {
  int bedAvailability;
  int newStudentCases;
  int newEmployeeCases;
  int onCampusQuarantine;
  int offCampusQuarantine;
  int onCampusIsolation;
  int offCampusIsolation;

  Data(
      this.bedAvailability,
      this.newStudentCases,
      this.newEmployeeCases,
      this.onCampusQuarantine,
      this.offCampusQuarantine,
      this.onCampusIsolation,
      this.offCampusIsolation);

  Data.fromJson(Map<String, int> json)
      : bedAvailability = json['bedAvailability'],
        newStudentCases = json['newStudentCases'],
        newEmployeeCases = json['newEmployeeCases'],
        onCampusQuarantine = json['onCampusQuarantine'],
        offCampusQuarantine = json['offCampusQuarantine'],
        onCampusIsolation = json['onCampusIsolation'],
        offCampusIsolation = json['offCampusIsolation'];

  Map<String, int> toJson() => {
        'bedAvailability': bedAvailability,
        'newStudentCases': newStudentCases,
        'newEmployeeCases': newEmployeeCases,
        'onCampusQuarantine': onCampusQuarantine,
        'offCampusQuarantine': offCampusQuarantine,
        'onCampusIsolation': onCampusIsolation,
        'offCampusIsolation': offCampusIsolation,
      };
}
