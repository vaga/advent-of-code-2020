const input = `29,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,41,x,x,x,37,x,x,x,x,x,653,x,x,x,x,x,x,x,x,x,x,x,x,13,x,x,x,17,x,x,x,x,x,23,x,x,x,x,x,x,x,823,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,19`

const busIds = input.split(',').map((busId, index) => busId === 'x' ? 1 : parseInt(busId))

let increment = 1
let timestamp = 0
for (let i = 0; i < busIds.length; i++) {
    const busId = busIds[i]

    while ((timestamp + i) % busId > 0) {
        timestamp += increment
    }
    increment *= busId
}

console.log('Part 2:', timestamp)
