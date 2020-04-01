Student.destroy_all
Course.destroy_all
Enrollment.destroy_all


student1 = Student.create(first_name: "Richard", last_name: "Bobo")
student2 = Student.create(first_name: "Tomazye", last_name: "Anderson")

course1 = Course.create(title: "Software Engineering", description: "Learn to code Ruby and Javascript.")
course2 = Course.create(title: "Data Science", description: "Learn to do stuff.")
course3 = Course.create(title: "UX/UI Design", description: "Learn how to design stuff.")

enroll1 = Enrollment.create(student_id: student1.id, course_id: course1.id)
enroll2 = Enrollment.create(student_id: student2.id, course_id: course2.id)
enroll3 = Enrollment.create(student_id: student2.id, course_id: course3.id)