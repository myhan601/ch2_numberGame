//
//  BaseballGame2.swift
//  ch2_numberGame
//
//  Created by 한철희 on 3/14/24.
//

import Foundation

// BaseballGame.swift 파일 생성
class BaseballGame2 {
    private var answer: [Int] = []

    func start() {
        answer = makeAnswer()

        while true {
            print("숫자를 입력하세요")
            guard let input = readLine(), input.count == 3 else { // 입력값이 3자리가 아닐 경우
                print("올바르지 않은 입력값입니다.")
                continue
            }
            // 숫자외의 값이 입력되었을 경우
            if !input.allSatisfy({ $0.isNumber }) {
                print("세 자리 숫자를 입력하세요.")
                continue
            }

            let guess = input.compactMap { Int(String($0)) }
            // 입력값에 0이 포함된 경우
            if guess.contains(0) {
                print("0은 사용할 수 없습니다. 다시 입력하세요.")
                continue
            }

            if guess == answer {
                print("정답입니다.")
                break
            } else {
                let (strikes, balls) = checkGuess(guess)
                if strikes == 0 && balls == 0 {
                    print("Nothing")
                } else {
                    print("\(strikes)스트라이크 \(balls)볼")
                }
                
            }
            
            
        }
    }

    private func makeAnswer() -> [Int] {
        var randomNumber: [Int]
        repeat {
            let hundreds = Int.random(in: 1..<10) // 범위 설정으로 0이 오는것을 방지
            var tens = Int.random(in: 0..<10)
            var units = Int.random(in: 0..<10)
            
            while tens == hundreds {
                tens = Int.random(in: 0..<10)
            }
            while units == hundreds || units == tens {
                units = Int.random(in: 0..<10)
            }
            randomNumber = [hundreds, tens, units]
        } while Set(randomNumber).count < 3
        print(randomNumber)
        return randomNumber
    }

    private func checkGuess(_ guess: [Int]) -> (Int, Int) {
        var strikes = 0
        var balls = 0

        for (index, digit) in guess.enumerated() {
            if digit == answer[index] {
                strikes += 1
            } else if answer.contains(digit) {
                balls += 1
            }
        }
        return (strikes, balls)
    }
}
