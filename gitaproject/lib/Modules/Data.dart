import 'package:flutter/material.dart';
import 'package:gitaproject/GitaQuiz.dart';
import 'package:gitaproject/Modules/Event.dart';

const Color KAppColor = Color(0xffde554d);

List<Map> categories = [
  {
    "name": 'Gita Quiz',
    'icon': Icons.music_note,
  },
  {
    "name": 'Know Kurukshetra',
    'icon': Icons.sports_basketball,
    'ontap': GitaQuiz(),
  },
  {
    "name": 'Gita Sound',
    'icon': Icons.fastfood,
  },
  {
    "name": 'Upcoming Gita',
    'icon': Icons.bubble_chart,
  },
];

List<Event> weekendEvents = [
  Event(
    name: 'Gita Quiz Festival',
    image: 'assets/event1.jpg',
    date: '12 Sept',
    category: categories[0],
    location: 'Data1',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Know Kurukshetra',
    image: 'assets/event2.jpg',
    date: '13 Sept',
    category: categories[0],
    location: 'Data2',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Upcoming Gita',
    image: 'assets/event3.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Data3',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Gita Sound',
    image: 'assets/event1.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Data4',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Gita Sound',
    image: 'assets/event2.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Data3',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Gita Sound',
    image: 'assets/event3.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Data2',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
];

List<Event> upcomingHomeEvents = [
  Event(
    name: 'Gita Quiz Festival',
    image: 'assets/event1.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Data1',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Know Kurukshetra',
    image: 'assets/event2.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Data2',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Upcoming Gita',
    image: 'assets/event3.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Data2',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Gita Sound',
    image: 'assets/event1.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Data1',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Gita Sound',
    image: 'assets/event2.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Data2',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Gita Sound',
    image: 'assets/event3.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Data3',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
];

List<Event> profileEvents = [
  Event(
    name: 'Gita Quiz Festival',
    image: 'assets/event1.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Data1',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Know Kurukshetra',
    image: 'assets/event2.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Data2',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Upcoming Gita',
    image: 'assets/event3.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Data3',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Gita Sound',
    image: 'assets/event2.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Data2',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
];
