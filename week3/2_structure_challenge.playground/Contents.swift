import UIKit

//도전 과제
//1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기(Lecture)
//2. 강의 어레이와 강사이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
//3. 강의 3개를 만들고 강사이름으로 강의 찾기

//protocol
//해야 할 일, 지켜야 할 일
//: CustomStringConvertible



struct Lecture: CustomStringConvertible{
    var description: String {
        return "Title: \(name), Instructor: \(instructor)"
    }

    let name: String
    let instructor: String
    let numOfStudent: Int
}

func printLecture(from tutor: String, lectures: [Lecture]){
    
    //방법1:
//    var lectureName = ""
//
//    for lecture in lectures{
//        if tutor == lecture.instructor{
//            lectureName = lecture.name
//        }
//    }
    
    //방법2 :
    //같은 것 중에 젤 빠른것을 돌려주는 closure 이용
    let lectureName = lectures
        .first{ (lec) -> Bool in
                return lec.instructor == tutor
        }?.name ?? ""
 
    //?만 하면 optional 타입이겠지만, ?? "" 하면 nil 인 경우 빈 문자열을 돌려줌
    
    //방법3:
    let lectureName2 = lectures
        .first{ ($0.instructor == tutor)}?.name ?? ""
 
    
    print("아 그 강사님 강의는요: \(lectureName)")
}

let lect1 = Lecture(name: "iOS Basic", instructor: "Jason", numOfStudent: 35)
let lect2 = Lecture(name: "iOS Advanced", instructor: "Jack", numOfStudent: 25)
let lect3 = Lecture(name: "iOS Pro", instructor: "Jim", numOfStudent: 15)

let lectures = [lect1, lect2, lect3]

printLecture(from: "Jack", lectures: lectures)
printLecture(from: "Jim", lectures: lectures)
printLecture(from: "Jason", lectures: lectures)

print(lect1) //description 이 없을 때
//Lecture(name: "iOS Basic", instructor: "Jason", numOfStudent: 35) --> 이렇게 출력
//프로토콜 description  이 있는 경우 원하는대로 출력가능
//Title: iOS Basic, Instructor: Jason


