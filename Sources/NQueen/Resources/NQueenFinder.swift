
func solveQueens(_ board: inout Board, row: Int = 0, findAllSolution: Bool = false) -> Bool {
  count += 1
  if row == board.size {
    if findAllSolution {
      print(board)
    }
    return true
  } else {
    for index in 0..<board.size {
      if board.isSafe(row: row, col: index) {
        board.place(row: row, col: index)
        if solveQueens(&board, row: row + 1, findAllSolution: findAllSolution) {
          if !findAllSolution {
            return true
          }
        }
        board.remove(row: row, col: index)
      }
    }
  }
  return false
}
