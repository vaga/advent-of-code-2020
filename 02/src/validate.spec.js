const { validateRecurrence, validatePosition } = require('./validate.js')

describe('Day 2', () => {
  describe('validateRecurrence', () => {
    test.each([
      ['1-3 a: abcde', true],
      ['1-3 b: cdefg', false],
      ['2-9 c: ccccccccc', true],
    ])(
      'given %p as arguments, returns %p',
      (line, expected) => {
        expect(validateRecurrence(line)).toBe(expected)
      },
    )
  })

  describe('validatePosition', () => {
    test.each([
      ['1-3 a: abcde', true],
      ['1-3 b: cdefg', false],
      ['2-9 c: ccccccccc', false],
    ])(
      'given %p as arguments, returns %p',
      (line, expected) => {
        expect(validatePosition(line)).toBe(expected)
      },
    )
  })
})
