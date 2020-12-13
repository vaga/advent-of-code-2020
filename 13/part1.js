const input = `1008169
29,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,41,x,x,x,37,x,x,x,x,x,653,x,x,x,x,x,x,x,x,x,x,x,x,13,x,x,x,17,x,x,x,x,x,23,x,x,x,x,x,x,x,823,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,19`

const lines = input.split("\n")
const timestamp = parseInt(lines[0], 10)
const busIds = lines[1].split(',').filter(busId => busId != 'x').map(busId => parseInt(busId, 10))

let selectedId = 0
let selectedDiff = Number.POSITIVE_INFINITY
for (let index in busIds) {
    const busId = busIds[index]
    const diff = busId - timestamp % busId
    if (selectedDiff > diff) {
        selectedId = busId
        selectedDiff = diff
    }
}

console.debug('Part 1:', selectedId * selectedDiff)
