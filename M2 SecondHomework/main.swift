//
//  main.swift
//  M2 SecondHomework
//
//  Created by Sumaya on 16/1/23.
//

import Foundation


class User{
    var surname: String
    var name:String
    init(surname: String,name:String) {
        self.surname = surname
        self.name = name
    }
    func getFullName(){
        print("\(surname)")
    }
}


class Student:User{
    var year:Int
    var course:Int
    init(year: Int, name:String, surname:String,course:Int){
        self.year = year
        self.course = course
        super.init(surname: surname, name: name)
    }
    func getCourse(){
        var thisYear = 2023
      
        course = thisYear - year
            if course >= 5 {
                print("Студент курса - \(course)")
            } else {
                print("Нет такого студента")
            }
        }
    }


var student = Student(year: 2022, name: "Adam", surname: "Kim", course: 0)
student.getCourse()
