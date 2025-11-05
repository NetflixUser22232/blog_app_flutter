import 'package:flutter/cupertino.dart';

class BodySizedbox extends StatelessWidget {
  const BodySizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return SizedBox(
      width: width * 0.8,
      height: height * 0.3,
      child: Column(
        children: [
          Text(
            "Title",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: height * 0.007),
          Text(
            "Subtitle",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: height * 0.02),
          Text(
            "Author name",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
 ),
const Text("Schedule your priorities. Humans are such funny critters. If you have a friend to meet, you’ll arrange to see them at a set time. But if you have something that matters to you more than anything – say writing a book, or going to the gym – you won’t schedule it. You’ll just ‘get round to it’. Treat your highest priorities like flights you have to catch: give them a set time in advance and say no to anything that would stop you making your flight.

First things first. What is the single most important (not urgent) thing you could possibly be doing? Do some of that today. Remember there’s a limitless number of distracting stormtroopers – don’t fool yourself by thinking “if I just do this thing first then I can”. Jedi don’t live by excuses.

Less volume, more time. There’s always millions of things you could be doing. The trick is to pick no more than 1 – 3 a day, and relentlessly pursue those. Your brain won’t like this limit. Other people won’t like this limit. Do it anyway. Focusing your all on one task at a time is infinitely more efficient than multi-tasking and gives you time to excel at your work.

Ignore. It’s rude, unprofessional and often utterly necessary. There are people you won’t find time to reply to. There are requests you will allow yourself to forget. You can be slow to do things like tidy up, pay bills or open mail. The world won’t fall apart. The payoff is you get done what matters.

One final lesson from the Jedi: they’re heroes.

Heroes inspire us for many reasons: they make tough decisions, they keep going and they get done what matters. But there’s another reason we love our heroes. Inside us all, we know we have the power to become one ourselves.")
        ],
      ),
    );
  }
}
