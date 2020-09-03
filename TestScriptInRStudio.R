print("hello world")#print to the console
mean(1:20)
x<-1:20
mean(x)
#create a function called get total marks
#has two values as arguments
GetTotalMarks <- function(quiz.marks, viva.marks) {
  total.marks <- quiz.marks + viva.marks
  total.marks
}

#create two integer vectgors
student.physics.quiz.marks <-c(70L,75L,80L,85L) #integer
student.physics.viva.marks <-c(7L,5L,8L,6L)
#pass two integer vectors as arguments
#first value passed in GetTotalMarks will be assigned to
#first argument of GetTotalMarks function and so on
#here we are calling function and passing values to arguments
#also called function invokation or function call
student.physics.total.marks <- GetTotalMarks(student.physics.quiz.marks,
                                             student.physics.viva.marks)
student.physics.total.marks
#use function now for chemistry scores
student.chemistry.quiz.marks <-c(60L,70L,85L,70L) #integer
student.chemistry.viva.marks <-c(8L,4L,7L,9L)
student.chemistry.total.marks <- GetTotalMarks(student.chemistry.quiz.marks,
                                               student.chemistry.viva.marks)
student.chemistry.total.marks