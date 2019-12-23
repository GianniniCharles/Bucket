//https://www.hackerrank.com/challenges/grading/problem
import Foundation

// 81
//(next mult is 85)
// 83



func roundedGrade(grade: Int) -> Int {
    guard grade >= 38  else {
              print(grade)
              return grade
          }
          let range = grade..<(grade + 3)
          
          if let nextMultipleOf5 = range.first(where: { $0 % 5 == 0}) {
            print(nextMultipleOf5)
              return nextMultipleOf5
          } else {
            print(grade)
              return grade
          }
}


func gradingStudents(grades: [Int]) -> [Int] {
    return grades.map { roundedGrade(grade: $0)}
}

let data = [38, 44, 41, 88, 91]

gradingStudents(grades: data)
