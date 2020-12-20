
/*
 내가 좋아하는 이상형 찾기!
 
 목표: 이상형인지 아닌지를 알려주는 함수 만들기
 
 사람의 height, age, weeklyFreetime, numberOfHouses를 가지고
 총합이 25점이 넘으면 이상형으로 판단하는 함수를 만들어 보아요.
 
 Age를 비교할때는 switch를 써주세요!
 
 ----height----
 키는 160 이상이면 10점
 150~160 사이이면 5점
 150이하는 0점
 
 ----age----
 나이는 28~34사이에 있으면 10점
 35~45사이이면 5점
 28미만 혹은 40이 넘으면 0점
 
 ----numberOfHouses----
 집은 있으면 좋고 없어도 괜찮습니다.
 집이 있으면 10점 가산점이 붙습니다.
 
 총 합이 20이상 이면 True, 아니면 False인 함수를 만들어주세요.
*/

import UIKit

class Person {
    let height: Float
    let age: Int
    let numberOfHouses: Int?
    
    //TODO: 생성자를 만들어주세요.
    init(height: Float, age:Int, numberOfHouses: Int?){
        self.height = height
        self.age = age
        self.numberOfHouses = numberOfHouses
    }
    
}

func isThisPersonMyRomance(p: Person) -> Bool {
    var total = 0
    var isMyRomance = false
    //TODO: 점수 로직이 들어가서 총 점수를 계산해 주시고, 그에따라 Bool값을 리턴해주세요.
    
    //----height----
    if p.height >= 160 {
        total += 10
    }else if (p.height >= 150 && p.height < 160) {
        total += 5
    }else {
        total += 0
    }
    
    //----age----
    if (p.age >= 28 && p.age < 35)  {
        total += 10
    }else if (p.age >= 35 && p.age < 46) {
        total += 5
    }else {
        total += 0
    }
    
//    ----numberOfHouses----
    let houses: Int = p.numberOfHouses ?? 0
    
    if houses > 0 {
        total += 10
    }
    
    if total >= 20 {
        isMyRomance = true
    }
    
    return isMyRomance
}

// Test
// Person을 하나 생성해주세요. 값은 임의로 정하셔도 됩니다.
isThisPersonMyRomance(p: Person(height: 160.0, age: 34, numberOfHouses: 0))
