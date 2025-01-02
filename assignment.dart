abstract class Role {
void displayRole();
}

class Person implements Role {
final String name;
final int age;
final String address;

Person(this.name, this.age, this.address);

@override
void displayRole() {
print("Role: Person");
}
}

class Student extends Person implements Role {
final String studentID;
final String grade;
final List<int> courseScores;

Student(String name, int age, String address, this.studentID, this.grade, this.courseScores)
: super(name, age, address);


calculateAverageScore() {
int? sum = 0;
for (int index = 0; index < courseScores.length; index++) {
sum = sum! + courseScores[index] as int;
}
var avg = (sum! / courseScores.length).toStringAsFixed(2);
return avg!;
}

@override
void displayRole() {
print("Role: Student");
}
}

class Teacher extends Person implements Role {
final String teacherID;
final List<String> coursesTaught;

Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
: super(name, age, address);

void displayCoursesTaught() {
for (var course in coursesTaught) {
print("- $course");
}
}

@override
void displayRole() {
print("Role: Teacher");
}
}

class StudentManagementSystem {
void run() {
var student = Student("john Doe", 20, "123 Main St", "231093", "A", [90, 85, 82]);
print("Student Information:");
print("\n");
student.displayRole();
print("Name: ${student.name}");
print("Age: ${student.age}");
print("Address: ${student.address}");
print("Average Score: ${student.calculateAverageScore()}");

    print("\n");

    var teacher = Teacher("Mrs. Smith", 35, "456 Oak St", "222", ["Math", "English", "Bangla"]);
    print("Teacher Information:");
    teacher.displayRole();
    print("Name: ${teacher.name}");
    print("Age: ${teacher.age}");
    print("Address: ${teacher.address}");
    print("Courses Taught:");
    teacher.displayCoursesTaught();
}
}

void main() {
var sms = StudentManagementSystem();
sms.run();
}