import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

// Create example notes
List<Note> notes = [
  Note("Jogging", 1, DateTime(2022, 9, 11)),
  Note("Learn React", 3, DateTime(2022, 9, 11)),
  Note("Cook rice", 2, DateTime(2022, 9, 11)),
  Note("Go to market", 1, DateTime(2022, 9, 10)),
];

// create a list of days of a week starting from sunday
List<String> daysOfWeek = const [
  "Sunday",
  "Saturday",
  "Friday",
  "Thursday",
  "Wednesday",
  "Tuesday",
  "Monday",
];

// Get today date
// DateTime today = DateUtils.dateOnly(DateTime.now());
// For testing purpose
DateTime today = DateTime(2022, 9, 11);

// Get the day of the week for today (1: Monday, 2: Tuesday,..., 7: Sunday)
// int dayOfToday = today.weekday;

// Calculate the start of the week (Monday)
DateTime startOfWeek = today.subtract(Duration(days: today.weekday - 1));

// Generate the list of dates for this week (Monday to Sunday) (0: Monday, 1: Tuesday,..., 6: Sunday)
List<DateTime> thisWeek =
    List.generate(7, (index) => startOfWeek.add(Duration(days: index)));

// Sorting notes of what week
Map<String, List<Note>> todayWeekNotes = {};
Map<String, List<Note>> pastWeekNotes = {};
Map<String, List<Note>> futureWeekNotes = {};

void main() {
  //sorting notes of what week
  sortThisWeekNote();
  // sortPastNote();
  // sortFutureNote();

  runApp(const Exercise());
}

void sortThisWeekNote() {
  for (var note in notes) {
    if (note.noteEndDate.isAfter(thisWeek[6])) {
      // futureWeekNotes.add(notes[i]);
    } else if (note.noteEndDate.isBefore(thisWeek[0])) {
      // pastWeekNotes.add(notes[i]);
      // pastWeekNotes
      //     .putIfAbsent(note.noteEndDate.toString(), () => [])
      //     .add(note);
    } else {
      // sorting notes of what day
      todayWeekNotes
          .putIfAbsent(
              (note.noteEndDate.weekday == 1
                  ? "Monday"
                  : (note.noteEndDate.weekday == 2
                      ? "Tuesday"
                      : (note.noteEndDate.weekday == 3
                          ? "Wednesday"
                          : (note.noteEndDate.weekday == 4
                              ? "Thursday"
                              : (note.noteEndDate.weekday == 5
                                  ? "Friday"
                                  : (note.noteEndDate.weekday == 6
                                      ? "Saturday"
                                      : "Sunday")))))),
              () => [])
          .add(note);
    }
  }
}

class Note {
  String noteName;
  int notePriority;
  DateTime noteEndDate;
  Note(this.noteName, this.notePriority, this.noteEndDate);
}

class Exercise extends StatefulWidget {
  const Exercise({super.key});
  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NoteAdd()),
              );
            },
          ),
          backgroundColor: Color(0xFFeffbff),
          body: NotePage(),
        ));
  }
}

class NotePage extends StatefulWidget {
  NotePage({
    super.key,
  });

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 59,
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Note",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          FutureNotesWidget(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 26, left: 2),
                child: Text(
                  "This Week",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: daysOfWeek.length,
                itemBuilder: (context, index) {
                  String day = daysOfWeek[index];
                  if (todayWeekNotes.containsKey(day) &&
                      todayWeekNotes[day]!.isNotEmpty) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                          width: 0,
                        ),
                        // Day header
                        Text(
                            "$day, ${thisWeek[index].day} Month ${thisWeek[index].month}",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFDA2BDE),
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 5,
                          width: 0,
                        ),
                        // List of notes for that day
                        Column(
                          children: todayWeekNotes[day]!.map((note) {
                            return Container(
                              width: double.infinity,
                              height: 80,
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 0),
                              decoration: BoxDecoration(
                                color:
                                    Colors.white, // White background for notes
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black
                                        .withOpacity(0.5), // Light shadow
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          note.noteName,
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Container(
                                          height: 25,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Color(
                                                0xFFfbebeb), // White background for notes
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.5), // Light shadow
                                                blurRadius: 5,
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                                "${(note.notePriority == 1) ? "Low" : (note.notePriority == 2) ? "Medium" : "High"}",
                                                style: TextStyle(
                                                    color: (note.notePriority ==
                                                            1)
                                                        ? const Color(
                                                            0xFFc81818)
                                                        : (note.notePriority ==
                                                                2)
                                                            ? const Color(
                                                                0xFFC1B46E)
                                                            : const Color(
                                                                0xFF169C00),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.edit_outlined,
                                          color: Color(0xFFff9d9d),
                                        ),
                                        onPressed: () {
                                          // TODO: Edit note
                                          // pop up a dialog to edit the note
                                          // edit the note
                                          // sortNote() to update the note
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => NoteEdit(
                                                      note: note,
                                                    )),
                                          );
                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.delete_outline,
                                          color: Color(0xFFff9d9d),
                                        ),
                                        onPressed: () {
                                          // TODO: Delete note
                                          // delete the note
                                          // sortNote() to update the note
                                          notes.remove(note);
                                          sortThisWeekNote();
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    );
                  } else {
                    return SizedBox.shrink(); // No notes for that day
                  }
                },
              ),
            ],
          ),
          PastNotesWidget(),
        ],
      ),
    );
  }
}

class NoteEdit extends StatefulWidget {
  final Note note;
  const NoteEdit({super.key, required this.note});

  @override
  State<NoteEdit> createState() => _NoteEditState();
}

class _NoteEditState extends State<NoteEdit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.undo),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
          child: Column(
            children: [
              Text(
                "Edit Note",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              //img
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 36),
                child: SizedBox(
                  height: 180,
                  child: Image.asset("assets/images/image1.png"),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Note Title",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xFFe0b7b7), width: 2)),
                            labelText: widget.note.noteName),
                      ))
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Note Priority",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xFFe0b7b7), width: 2)),
                            labelText: (widget.note.notePriority == 1)
                                ? "Low"
                                : (widget.note.notePriority == 2)
                                    ? "Medium"
                                    : "High"),
                      ))
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Note End Date",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xFFe0b7b7), width: 2)),
                            labelText: widget.note.noteEndDate.toString()),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NoteAdd extends StatelessWidget {
  const NoteAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.undo),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Add Note"),
              Column(
                children: [
                  Text("Note Title"),
                  SizedBox(
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Please enter note title"),
                      ))
                ],
              ),
              Column(
                children: [
                  Text("Note Priority"),
                  SizedBox(
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Please enter note priority"),
                      ))
                ],
              ),
              Column(
                children: [
                  Text("Note End Date"),
                  SizedBox(
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Please enter note end date"),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PastNotesWidget extends StatelessWidget {
  const PastNotesWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FutureNotesWidget extends StatelessWidget {
  const FutureNotesWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
