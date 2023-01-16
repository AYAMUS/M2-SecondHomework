//
//  main.swift
//  M2 SecondHomework
//
//  Created by Sumaya on 16/1/23.
//

import Foundation

/Домашнее задание №2.
//
//1)Придумать пример с наследованием с тройной иерархией. То есть 1 родитель, от него наследуется 2 наследника, от 2 наследников наследуются еще по 1 классу. Придумать общие параметры. В main вызвать по 1 объекту каждого класса.

class Grandpa{
    var surname: String
    var eyescolor: String
    
    init(surname: String, eyescolor: String) {
        self.surname = surname
        self.eyescolor = eyescolor
    }
    func showInfo(){
        print("Фамилия - \(surname), Цвет глаз - \(eyescolor)\n")
    }
}
    class Father: Grandpa{
        var hairColors:String
        
        init(hairColors: String, surname:String, eyescolor:String) {
            self.hairColors = hairColors
        super.init(surname: surname, eyescolor: eyescolor)
        }
        override func showInfo() {
            print("Фамилия - \(surname), Цвет глаз - \(eyescolor), Цвет волос -\(hairColors)\n")
        }
}
class Uncle: Grandpa{
    var eyes: String
     
    init(surname:String, eyescolor: String, eyes: String) {
        self.eyes = eyes
    super.init(surname: surname, eyescolor: eyescolor)
    }
    override func showInfo() {
        print("Фамилия - \(surname), Цвет глаз - \(eyescolor), Глаза - \(eyes)\n")
    }
}

class Son: Father{
    var name: String
    
    init(surname:String,hairColors: String,name: String,eyescolor: String) {
        self.name = name
        super.init(hairColors: hairColors, surname: surname, eyescolor: eyescolor)
    }
    override func showInfo() {
        print("Фамилия - \(surname), Цвет глаз - \(eyescolor), Имя - \(name)\n")
    }
}

class Daugther: Uncle{
    var imya: String
    
    init(surname:String, eyescolor: String, eyes: String,imya: String) {
        self.imya = imya
        super.init(surname: surname, eyescolor: eyescolor, eyes: eyes)
    }
    override func showInfo() {
        print("Фамилия - \(surname), Имя - \(imya), Цвет глаз - \(eyescolor), Глаза - \(eyes)")
    }
}
var grandpa = Grandpa(surname: "Pak", eyescolor: "brown")
var father = Father(hairColors: "black", surname: "Pak", eyescolor: "brown")
var uncle = Uncle(surname: "Pak", eyescolor: "brown", eyes: "brown")
var son = Son(surname: "Pak", hairColors: "black", name: "Jin", eyescolor: "blue")
var daugther = Daugther(surname: "Pak", eyescolor: "brown", eyes: "oval", imya: "Boyen")

son.showInfo()
grandpa.showInfo()
father.showInfo()
uncle.showInfo()
daugther.showInfo()


//2) Создайте класс Student (Студент), который будет наследоваться от класса User с параметрами имя и фамилия и функцией getFullName() с помощью которого можно вывести одновременно имя и фамилию пользователя.
//Класс Студент имеет параметр year (год поступления в вуз). и функцию getCourse(), который будет выводить текущий курс студента (от 1 до 5). Курс вычисляется так: нужно от текущего года отнять год поступления в вуз. Текущий год получите самостоятельно. Создать объекты студентов в main и вызовите у них 2 функции getFullName() и getCourse()


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
    
    init(year: Int, name:String, surname:String) {
        self.year = year
        super.init(surname: surname, name: name)
    }
    func getCourse(){
        if 2023 - year == 1{
            print("Студент 1-курса: \(name) \(surname)")
        }
        if 2022 - year == 2{
            print("Студент 2-курса: \(surname) \(name)")
        }
        if 2021 - year == 3{
            print("Студент 3-курса:\(surname) \(name)")
        }
        if 2020 - year == 4{
            print("Студент 4-курса:\(surname) \(name)")
        }
        if 2019 - year == 5{
            print("Студент 5-курса:\(surname) \(name)")
        }
    }
}
    

var student = Student(year: 2022, name: "Adam", surname: "Kim")
student.getCourse()

