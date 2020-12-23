import UIKit

var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90 ]
var scoreDic2: Dictionary<String, Int> = ["Jason":80, "Jay":95, "Jake":90]

scoreDic["Jason"]
scoreDic["Jay"]

scoreDic["Jerry"]

scoreDic2 = [:]
scoreDic2.isEmpty

scoreDic.count

//기존 사용자 업데이트
scoreDic["Jason"] = 99
scoreDic

//사용자 추가
scoreDic["Jack"] = 100
scoreDic

//사용자 제거
scoreDic["Jack"] = nil
scoreDic

//For loop
for (name, score) in scoreDic {
    print("\(name), \(score)")
   // print(name, score)
}

for key in scoreDic.keys {
    print(key)
}

//1. 이름, 직업, 도시 에 대해서 본인의 딕셔너리 만들기
//2. 여기서 도시를 부산으로 업데이트 하기
//3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기

//1.
var pplDic: [String:String] = ["name":"Jason" , "job": "iOS Engineer", "city":"Seoul"]

pplDic["city"] = "Busan"
pplDic

func printPersonDic(dic: [String: String] ) {
    if let name = dic["name"] , let city = dic["city"]{
        print(name, city)
    }else {
        print("-->cannot find ")
    }
}
printPersonDic(dic: pplDic)
