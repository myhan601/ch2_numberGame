//
//  main.swift
//  ch2_numberGame
//
//  Created by 한철희 on 3/13/24.
//

//let game = BaseballGame1() // lv.1 실행
let game = BaseballGame2() // lv.2, lv.3 실행

// Lv.4 구현

var menuInput: Int?
var count: Int = 0
var tryCnt: [Int] = []


while menuInput != 3 {
    print("환영합니다! 원하시는 번호를 입력해주세요")
    print("1. 게임 시작하기  2. 게임 기록 보기   3. 종료하기")

    if let input = readLine(), let choice = Int(input) {
        menuInput = choice

        switch menuInput {
        case 1:
            print("< 게임을 시작합니다 >")
            let game = BaseballGame2()
            game.start()
            count += 1
            tryCnt.append(game.tryNum)
        case 2:
            print("< 게임 기록 보기 >")
            for i in 0..<count {
                print("\(i+1)번째 게임 : 시도 횟수 - \(tryCnt[i])")
            }
        case 3:
            print("게임을 종료합니다.")
        default:
            print("올바른 숫자를 입력해주세요!")
        }
    } else {
        print("올바른 숫자를 입력해주세요!")
    }
}


