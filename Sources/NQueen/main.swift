import Foundation

//task1
var boardForAll = Board(size: 8)
_ = solveQueens(&boardForAll, findAllSolution: true)

//task 2
var board = Board(size: 8)
var count = 0
if(solveQueens(&board)){
    print("Found solution with \(count) steps")
    print(board)
}