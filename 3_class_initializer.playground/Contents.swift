import UIKit

//DesignatedInitializer
//자신의 부모의 DI 를 호출해야함

//Convenience Initializer
//같은 클래스의 다른 이니셜라이저를 꼭 하나 호출해야함
//궁극적으로는 DI를 호출해야함

struct Grade{
    var letter:Character
    var points: Double
    var credits: Double
}
class Person {
       var firstName: String
       var lastName: String
   
       init(firstName: String, lastName: String) {
           self.firstName = firstName
           self.lastName = lastName
       }
   
       func printMyName() {
           print("My name is \(firstName) \(lastName)")
       }
}

class Student: Person{
    var grades: [Grade] = []
    
    //designated initializer
    override init(firstName: String, lastName: String) { //////override 를 써야함 !!!! 
        super.init(firstName: firstName, lastName: lastName)
        
    }
    //convenience initializer
    convenience init(student:Student) {
        self.init(firstName: student.firstName, lastName: student.lastName)
    }
}

//학생인데 운동선수

class StudentAthlete: Student{
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports:[String]) {
        //2-phase initialization
        
        //Phase1
        self.sports = sports                                 //자기꺼
       // self.train() // 초기화 되기 전에 다른 메소드 호출은 안됨
        super.init(firstName: firstName, lastName: lastName) //부모꺼
        
        //Phase2
        self.train()
        
    }
    
    //간략하게
    convenience init(name: String){
        self.init(firstName: name, lastName: "", sports:[])
    }
    
    func train(){
        trainedTime += 1
    }
}

//운동선수인데 축구선수
class FootballPlayer: StudentAthlete{
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

let student1 = Student(firstName: "Jason", lastName: "Lee")
let student1_1 = Student(student: student1)    // 전학생
let student2 = StudentAthlete(firstName: "Jay", lastName: "Lee", sports: ["Football"])
let student3 = StudentAthlete(name: "Mike")
