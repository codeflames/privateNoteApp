class Note {
  String title;
  String content;
  DateTime date;

  Note({this.title, this.content, this.date});
}

addNotes({String title, String content}) {
  notes.add(Note(
    title: title,
    content: content,
    date: DateTime.now(),
  ));
}

final Map<String, int> categories = {
  'Notes': notes.length,
  'Work': works.length,
  'Home': home.length,
  'Others': others.length,
};

final List<Note> works = [];
final List<Note> home = [];
final List<Note> others = [];
final List<Note> notes = [
  Note(
    title: 'Buy ticket',
    content: 'Buy airplane ticket through Kayak for \$318.38',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
  Note(
    title: 'Walk with dog',
    content: 'Walk on the street with my favorite dog.',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
  Note(
    title: 'Buy ticket',
    content: 'Buy airplane ticket through Kayak for \$318.38',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
  Note(
    title: 'Buy ticket',
    content:
        'Buy airplane  gkugkgggggggggggggggggggggggggggggggggggggggggggggg hhhhhhhhhhhhhhhhhh  kkkkkkkkkticket through Kayak for \$318.38',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
];
