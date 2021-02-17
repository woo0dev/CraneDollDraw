//
//  main.swift
//  drawGame
//
//  Created by Woo0 on 2021/02/15.
//

import Foundation

    var result = 0
    var board1 = [[Int]]()
    board1.append([0,0,0,0,0])
    board1.append([0,0,1,0,3])
    board1.append([0,2,5,0,1])
    board1.append([4,2,4,4,2])
    board1.append([3,5,1,3,1])
    var moves1 = [Int]()
    var board = board1
    var moves = moves1
    while true {
        print("위치를 선택해주세요. 인형뽑기를 그만하려면 -1을 입력하세요.")
        var loc = Int(readLine()!)
        if loc == -1 {
            break
        }
        for x in 0...board.count-1 {
            if board[x][loc!] != 0 {
                moves.append(board[x][loc!])
                if moves.count > 1 && moves[moves.count-1] == moves[moves.count-2] {
                    moves.removeLast()
                    moves.removeLast()
                } else {
                    result += 1
                }
                board[x][loc!] = 0
                print(board)
                print(moves)
                break
            }
        }
    }
    print(result)
    print("인형뽑기가 종료되었습니다.")
