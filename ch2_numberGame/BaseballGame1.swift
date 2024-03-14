//
//  BaseballGame1.swift
//  ch2_numberGame
//
//  Created by 한철희 on 3/13/24.
//

import Foundation

// BaseballGame.swift 파일 생성
class BaseballGame1{
    func start() {
        let answer = makeAnswer() // 정답을 만드는 함수
        
        while true {
            print("숫자를 입력하세요")
            let input = readLine()!// 사용자 입력받기
            let number = Int(input)
            
            if Int(input) == answer {
                print("정답입니다")
                break
            } else {
                print("오답입니다. 다시 해보세요")
            }
        }
    }
    
    func makeAnswer() -> Int {
        // 함수 내부를 구현하기
        var randomNumber: Int
        repeat {
            let hundreds = Int.random(in: 1..<10) * 100
            let tens = Int.random(in: 0..<10) * 10
            let units = Int.random(in: 0..<10)
            randomNumber = hundreds + tens + units
        } while Set(String(randomNumber)).count < 3 // 중복된 숫자가 있는 경우 다시 생성
        print(randomNumber)
        return randomNumber
    }
}
