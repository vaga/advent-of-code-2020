function solve(numbers, n, score) {
  if (n === 0) {
    return score === 0 ? 1 : 0
  }

  for (let index in numbers) {
    const result = numbers[index] * solve(numbers.slice(1), n - 1, score - numbers[index])
    if (result > 0) {
      return result
    }
  }

  return 0
}

function solveWithSort(numbers, n, score, init = true) {
  if (init) {
    numbers = [...numbers].sort((a, b) => a - b)
  }

  if (n === 0) {
    return score === 0 ? 1 : 0
  }

  for (let index in numbers) {
    if (score < numbers[index]) {
      break
    }

    const result = numbers[index] * solveWithSort(numbers.slice(1), n - 1, score - numbers[index], false)
    if (result > 0) {
      return result
    }
  }

  return 0
}

module.exports = {
  solve,
  solveWithSort,
}
