function parseLine(line) {
  return line.split(/[- :]+/)
}

function validateRecurrence(line) {
  const [min, max, ref, password] = parseLine(line)
  const nbInstances = password.split(ref).length - 1

  return min <= nbInstances && nbInstances <= max
}

function validatePosition(line) {
  const [x1, x2, ref, password] = parseLine(line)
  const char1 = password[x1 - 1]
  const char2 = password[x2 - 1]

  return char1 !== char2  && (char1 === ref || char2 === ref)
}

module.exports = {
  validateRecurrence,
  validatePosition,
}
