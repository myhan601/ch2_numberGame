//
//  main.swift
//  ch2_numberGame
//
//  Created by 한철희 on 3/13/24.
//

//let game = BaseballGame1() // lv.1 실행
let game = BaseballGame2() // lv.2, lv.3 실행

// Lv.4 구현
print("환영합니다! 원하시는 번호를 입력해주세요")
print("1. 게임 시작하기  2. 게임 기록 보기   3. 종료하기")
let menuInput = Int(readLine()!)

if menuInput == 1 {
    print("< 게임을 시작합니다 >")
    game.start()
} else if menuInput == 2 {
    print("< 게임 기록 보기 >")
}
 // BaseballGame 인스턴스를 만들고 start 함수를 구현하기



