import 'package:flutter/cupertino.dart';

class BodySizedbox extends StatelessWidget {
  const BodySizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.1),
        child: SizedBox(
          width: width * 0.8,
          height: height * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How to master your time",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.002),
              const Text(
                "The secret to time management is simple: Jedi time tricks.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: height * 0.02),
              const Text(
                "Oliver Emberton",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const Text(
                """
    Time management is a fundamental skill that enables individuals to use their time effectively and productively, leading to greater success in both personal and professional life.
     Every person has the same twenty-four hours each day, and how these hours are allocated determines the level of achievement and overall well-being.
     Effective time management involves planning, organizing, and prioritizing tasks based on their importance and urgency, which helps in maximizing productivity and minimizing stress.
     It is particularly crucial for students, who must balance academic responsibilities, extracurricular activities, and personal development within a limited timeframe.
     By creating a practical schedule or timetable, individuals can allocate appropriate time to each activity, ensuring that essential tasks such as studying, sleeping, and exercising are not neglected.
     Prioritization is key; focusing on high-impact tasks first allows for better progress toward short-term and long-term goals.
     For instance, identifying the most productive time of day—often early morning after a good night’s sleep—and dedicating it to challenging tasks can significantly enhance efficiency.
     A well-structured routine not only ensures punctuality and consistency but also fosters discipline, which is essential for long-term success.
     To manage time effectively, one should begin by listing all daily tasks, categorizing them by priority, and assigning specific time slots to each.
     This method prevents procrastination and reduces the likelihood of last-minute rushes, especially during exam periods.
     Eliminating distractions such as excessive television, social media, or unproductive conversations can free up valuable time for more meaningful activities.
     Moreover, incorporating regular breaks into the schedule helps maintain focus and mental energy, preventing burnout.
     It is equally important to include time for rest, relaxation, and social interaction, as these contribute to emotional well-being and overall life satisfaction.
     Neglecting these aspects can lead to stress, fatigue, and decreased performance.
     A balanced approach to time management ensures that work is completed efficiently while still allowing space for personal growth, hobbies, and family time.
     The benefits of good time management extend beyond productivity; they include improved self-confidence, better decision-making, and a stronger sense of control over one’s life.
     When individuals manage their time wisely, they are more likely to meet deadlines, achieve their goals, and experience a greater sense of accomplishment.
     In the professional world, time management is equally vital, as it enhances work quality, supports career advancement, and strengthens relationships through punctuality and reliability.
     Ultimately, time is an irreplaceable resource—once lost, it cannot be recovered.
     Therefore, valuing time and using it purposefully is not just a strategy for success but a necessity for a fulfilling life.
     By consistently applying time management techniques such as goal setting, task prioritization, routine building, and self-reflection, individuals can transform their daily lives, reduce stress, and unlock their full potential.
     In essence, mastering time management is not about doing more in less time, but about doing what matters most with greater focus and intention.
              """,
                textAlign: TextAlign.justify,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
