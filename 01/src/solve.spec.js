const { solve, solveWithSort } = require('./solve.js')

describe('Day 1', () => {
  describe('solve', () => {
    test.each([
      [[1721, 979, 366, 299, 675, 1456], 2, 2020, 514579], // Part 1
      [[1721, 979, 366, 299, 675, 1456], 3, 2020, 241861950], // Part 2
      [[10, 11, 12, 13, 42], 2, 2020, 0], // No solution
    ])(
      'given %p, %p, and %p as arguments, returns %p',
      (numbers, n, score, expected) => {
        expect(solve(numbers, n, score)).toBe(expected)
      },
    )
  })

  describe('solveWithSort', () => {
    test.each([
      [[1721, 979, 366, 299, 675, 1456], 2, 2020, 514579], // Part 1
      [[1721, 979, 366, 299, 675, 1456], 3, 2020, 241861950], // Part 2
      [[10, 11, 12, 13, 42], 2, 2020, 0], // No solution
    ])(
      'given %p, %p, and %p as arguments, returns %p',
      (numbers, n, score, expected) => {
        expect(solveWithSort(numbers, n, score)).toBe(expected)
      },
    )
  })
})
