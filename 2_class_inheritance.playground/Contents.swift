import UIKit

//Person: Super Class(Parent Class)
//Student : Sub Class(Child Class)

//상속의 규칙
//-자식은 한개의 superclass 만 상속 받을 수 있다
//-부모는 여러 자식들을 가질 수 있음
//-상속의 깊이는 상관 없음

//Single Responsibility (단일 책임)
//Type Safety (타입이 분명해야 할 때)
//Shared Base Classes (다자녀가 있다)
//Extensibility (확장성이 필요한 경우)
//Identity (정체를 파악하기 위해)




// 처음 주어진 코드
//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//class Person {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
//
//class Student {
//    var grades: [Grade] = []
//
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}


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
    
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jason", lastName: "Lee")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3.0)
let history = Grade(letter: "A", points: 10, credits: 3)
jason.grades.append(math)
jason.grades.append(history)

jason.grades.count

//jay.grades   //Person has no member 'grades'

//학생인데 운동선수

class StudentAthlete: Student{
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
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

//Person > Student > Athlete > FootballPlayer

var athlete1 = StudentAthlete(firstName: "Yuna", lastName: "Kim")
var athlete2 = FootballPlayer(firstName: "Heung", lastName: "Son")

athlete1.firstName
athlete2.firstName

athlete1.grades.append(math)
athlete2.grades.append(math)

athlete1.minimumTrainingTime
athlete2.minimumTrainingTime

//athlete1.footballTeam
athlete2.footballTeam

athlete1.train()
athlete1.trainedTime

athlete2.train()
athlete2.trainedTime

athlete1 = athlete2 as StudentAthlete //uppercasting
athlete1.train()
athlete1.trainedTime

//athlete1.footballTeam //접근 안됨

//다운 캐스팅 // studentAthlete 에서 FootballPlayer 로 다루어질 수 있음
if let son = athlete1 as? FootballPlayer{
    print("--> team: \(son.footballTeam) ")
}


