import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard(
      {Key? key,
      required this.companyName,
      required this.jobTitle,
      required this.logoImagePath,
      required this.hourlyRate})
      : super(key: key);

  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.grey.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // height: 50,
                    child: Image.asset(
                      logoImagePath,
                      width: 70,
                      height: 50,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "Part Time",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  jobTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text("\$ " + hourlyRate.toString() + " /hr")
            ],
          ),
        ),
      ),
    );
  }
}
