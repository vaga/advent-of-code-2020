local map = {
  ".#.#....##.......#..........#..",
  "...#...........##...#..#.......",
  "#.####......##.#...#......#.#..",
  "##.....#.#.#..#.#............#.",
  "##.....#....#.........#...##...",
  "###..#.....#....#..............",
  "..........#..#.#..#.#....#.....",
  "##.....#....#.#...#.##.........",
  "#...#......#....##....#..#.#...",
  ".##.##...#....##..#.#.....#...#",
  ".....#.#..........##.#........#",
  ".##..................#..#..##.#",
  "#.#..........##....#.####......",
  ".#......#.#......#.........#...",
  "#....#..##.##..##........#.#...",
  "##..#.##..#...#..####.#..#.....",
  "###....#.###.##...........##..#",
  ".....#.##.....##.#..#####....##",
  "....#.###....#..##....##...#...",
  "..###.#...##.....#.##..#..#.#..",
  "#...#..#..#.........#..#.......",
  "##..#.#.....#.#.#.......#...#.#",
  "...#...##.#........#...#.......",
  "..#..#.#..#...#...#...........#",
  "........#.....#......#...##....",
  "#........##.##.#.#...#...#.....",
  "####.......#.##.###.#....#.....",
  "...#...........#...#......#...#",
  "##...#...#............#.......#",
  "....#...........##.......#.....",
  "###......#.....#....#...#.#...#",
  ".....##..........#.......#.#...",
  "##.##.##...#......#....#.......",
  "##..#.#..#......#...#..#.......",
  "....#....##.##............####.",
  "..#.###..#.##.###..#.##.......#",
  "#.##..#.#.....#..#.....##......",
  "..##..#.....##.#.##........#...",
  ".#..#.#......#..#............#.",
  ".....#..#.#...#....#.##.#......",
  ".#...##.#..#.#...##...##..##...",
  "###............#.#..#..#...#...",
  "..#..##.####.#.....#.....##.###",
  "#....#.##..##....#..#...#.##.#.",
  ".....#.##.........##...##......",
  ".........####.#....#.#......#.#",
  ".........#.#..#...#.#..#.#....#",
  ".#.....#..##.##..##....#.......",
  "..........##......#.##.###....#",
  ".##...###..##.#...#........##..",
  "..............#.#....#.#.###.##",
  "..##.##.......#.#......##...#..",
  ".#.....#..##..#.###...#..#.##.#",
  "#.....#.#..#...#........#...#..",
  ".#......#....#.#.....###...#..#",
  "..##.#....#..##......#.....#...",
  "..#.#.##..#.....#.####..###....",
  ".........#......#..#...........",
  "..#........#.##.#.....##.##..#.",
  ".......#.........#....#...#.#..",
  ".##.....#.#....#.#.......#.....",
  "..........#.##........##...##..",
  "###..###.#.#..#..#####.##.#.##.",
  "..##..##.#.#...#..#.#.#......#.",
  "#..#..#..#..##..#.....#......#.",
  "..#....#.##..#......##.........",
  "..#.##......#...##.#......#....",
  ".......#..#.##.#.....#.........",
  ".......#.#.#.###...##......#...",
  ".....#.#..........#..#...#.....",
  "....##..........#..........##..",
  "..#......#.....#.##.#..#...#.#.",
  "....#.....#..#...#..#.#.##..###",
  ".####....#........#...#........",
  "...##.#.##.#..#...##...#.##....",
  "....#...#...#.#.#.#...#..#.....",
  ".....#...#.#.....#.#........##.",
  "..#.#.......###.#.....##.......",
  "......#.........##....#....#..#",
  ".............##.....##.........",
  ".........##...##.......#.....#.",
  "##.........#..........#.###..##",
  "...#.....#......#....#..##.....",
  "##..#...#...##.#.....#.#......#",
  "..#...##.#.......#.#......#.##.",
  "......#.......#.#...........#..",
  "..........#.....##............#",
  "#........#...#..#.......###.##.",
  ".##...........#.#........#.#.#.",
  "...#..##...#.#....#####.#......",
  ".....##...###...#..#.##...####.",
  "...#....#.....#..#.......#.....",
  "#....#....#...#..#..#.######..#",
  "#.###...........#......#...#..#",
  ".#.#.#.#..#....#....#...##.#...",
  ".#..#.........#.#....###...#...",
  "......#..##.##..........#....##",
  ".....#......##....##.....#...#.",
  ".#...#.#.#....##....#..#....#.#",
  "..................#..###.#..##.",
  "..#.........#......#....#..###.",
  "#.#.....#..#..#....###..###....",
  "..##..##.#..##........##...##..",
  "##..#........##..###..#.....#.#",
  "..#..###..#......#....#...#...#",
  "#..#.#..............##.#..#.#..",
  ".....####....#...####.....#.#..",
  ".....#....##.#......###........",
  "##.##...#.#.#.#.......#....##..",
  ".#......#...#.#....#..##.#.##.#",
  "#.#.##.#.#......#..##........##",
  "...##.....#.....#...#..###...#.",
  "........###.....#.....#...##..#",
  ".....#.##.##......#.#....#...#.",
  ".#....##.......#..#.####.......",
  ".#..#....#..........#......#.#.",
  ".#.##.##.....###.#.#...........",
  ".........#......#..##..........",
  "....#...##.#.#.#..#.#.........#",
  "..#.....#.##...#..#..#.###....#",
  "...#.##......#.....##....#.....",
  "###............#.#....#...#....",
  ".......#.....#..#.#.#....#..#.#",
  "...#......#.#..##..#....#...#.#",
  "............##........##..##...",
  "..#..#.##..#......###..#.......",
  "........#.........#............",
  "..#...#.#########.#...##..###..",
  "#....#......#.......#.#.....#..",
  "#.#..#....###.###....#...#.#...",
  "#...###.#.#.......#.##......#..",
  ".................#...#.#.#.....",
  "##....#...#........#....#.#..#.",
  "......#.....#...#..........#.#.",
  "##..........#...#..........#.##",
  "..#.#.##.#....#.#......#...##..",
  ".....#.......#..#.....#........",
  "#.##.#..##..#.......##.........",
  "....#......#..#..#.#...#.......",
  "...#....#................###...",
  ".##.....#.#....#.#..........##.",
  "...#..#....#.##.##......#......",
  "..#.#....#.......#.#..##.......",
  "....#.....#..........##.#.#####",
  "#.....................##..#..#.",
  ".###..#.##.......##.#...#..#...",
  "...###.......#..#...#......#..#",
  "#..#...#.#..#.#..#..#.##.......",
  "#...##.......#..#..#.##..###...",
  "......#....#.#.#........#.##..#",
  "..##..#....#....#..#.#..#......",
  "..##.#...#.#######..#...#.....#",
  "..#....#..#.........#..##......",
  "...#....#.#......#..#..#.#.....",
  "#..#....#........#.#..##....###",
  "#....#..##......##.##.....#.###",
  "...#.#..........#..#.#.#.#.##..",
  "......##..#.#..#.#....#....#...",
  "##....#....#..#..#.##......#...",
  "....#.#..##.#.#...###....##.#..",
  "...#.......##..#.......#...#...",
  "......##.......#..##.....#...#.",
  "...#.#...#...........#...#.....",
  ".#....#...#......##.##..###..#.",
  ".#..........#...#...#...##.##..",
  ".....###..#.....#..##....#.####",
  "..#.###..#..##..##.....#.#.....",
  ".............#.###...##.#.....#",
  "....###.......###.#.....#..#.#.",
  "........##.#.........#.....###.",
  ".....###.#..#.....#...#..#.....",
  ".#....#..##.#..#.#....#.......#",
  "........#......#.#..#.#..#...##",
  "...#.##.##......#..............",
  ".#.....##.#.....#..#......##...",
  "#..#..#.....#.....#.....###....",
  ".##...........#..#.##.....#....",
  "..#.#......#.#...#.##.#..#...##",
  "...#..........#.....#..........",
  "#.#.#.#.#...#....#...#.....##..",
  "#......##...#...#..........#.#.",
  "....##........#.#..............",
  "#..#.#.#..#........##......#.##",
  "........####...##.#.....#......",
  "....#........#.#..#..##..#.#...",
  ".#.....#..###...#..#.....#..#..",
  "#......###.#..#....#..#.#......",
  "....#.....##.##..#...#.#..##.#.",
  "..##..#...#.#......#....#...#.#",
  "#..##...##..#...###...#..#.....",
  ".......#.....#...........##....",
  "#..##....#........#....##..#.#.",
  ".#........#..##...###.#..#.....",
  ".#.#....#..##...#...##.#..###..",
  "#.........#.......#.....#.#....",
  "#..#.....#.#.###.#..#......#...",
  "....#..#.#....#..##..###....###",
  "###.##.#.#..#...........#.#.#..",
  "..##.#.......#......#..##....#.",
  ".....#.#.#.......##.......#...#",
  "...........#.##....##.##....#.#",
  "...#.......#..#.##..#......#..#",
  "#.#.#...#......##.#...........#",
  "##........#...........###.#..#.",
  "..........#.#.#....#.#..##.#.#.",
  "...#.#.#....#..........#..#....",
  "#.#....###.#.#..#.......###...#",
  ".#....#......#.#.#..#..#.......",
  "......##.............#....#.#.#",
  ".#..........#.........#.##.....",
  "##....#....##....#..#.......#..",
  "#.##.##.#..#..#.....#..#.##.#..",
  ".#..#.......##..#.....##.##....",
  ".......#..........#.#.##..#.##.",
  "....#.....#.#...##....##.......",
  ".......#.........#...##....##.#",
  "#.....#......#..........#...#..",
  "...#.#.......#.#..#....###..#..",
  ".....#.#.#.........#...........",
  ".#..###.#.#........#.#.........",
  ".........#..#......##...##....#",
  "...###..#.....##.....#.###....#",
  ".##...#...#........###.#..#....",
  ".##........#..#.###.######.##.#",
  "##.#...#.#....#..##.#....##....",
  ".......##.....##.#..###.#......",
  "..##...##........#.......#....#",
  "#..##...#.####...###......#...#",
  ".##.....#.##.#.#.....###.#..##.",
  "..###....#.#.###.#....#........",
  "....#..###..#...#....#..#..#.#.",
  "#.#.##....##...##.......#......",
  ".........#...#....#..#.........",
  ".............#...#..##.#.......",
  "...#.##.......#...#.#..##.##...",
  ".####.#.##..#.#......#.##...#.#",
  ".#..#.#.....#.................#",
  "..#.##..###....#...#......####.",
  "..##..##...........#....#...#..",
  "....#...#...#...#.......#....#.",
  "#.#...###...#...#.#...#....##.#",
  "......#...#.#.......#.....#...#",
  "....##...#.#.#....#....#.#....#",
  ".....#.....#...##..#...#....##.",
  "#.....#....#......##.##....#...",
  "...#.#....#...#....#.#....##..#",
  "...#.#..#...##....###..#.......",
  "...##......###...###.#...#..#..",
  "##.......#.......###.......#..#",
  "..##.##..###.#............#...#",
  "#.....##..#..##....##..#.......",
  "......#.#...#......#.....#.....",
  "#...........#....#..##.##.#....",
  ".......#..#......#...#....#...#",
  ".#...##...........#......#...#.",
  "#........#....##...###.#....#..",
  ".....#.......##.........#.##...",
  ".#.###..#....#..##.#..#.#..#...",
  "#.......#.##.#.#....#.#..#....#",
  "###.....#.#.......#..#......#.#",
  "#..#.#.......#.#..##..##.#.#...",
  "#..#.#.#.###........#.....#...#",
  "#.#.#..#..##.....#...........#.",
  "..#.#..#.....#...#...#...##....",
  "...#.##......#...##.#...#.#.#.#",
  "#..#.#.#.#.......####..........",
  "..#......#.#......##.###.....##",
  "..#...##..#.........##....#.##.",
  "##.##.##.#.#.....#..........##.",
  ".#.....###.#..#....#..#.###...#",
  "#...##.......###....#.#..#.....",
  "..#....##.........##.........##",
  "......#....#.##.......#........",
  "..#.#.#..#...#...#...##.#...#..",
  "......#..##.#.#.#...##...#.#.##",
  "#..#...##.#.....#...#.##.......",
  "..#..#.........##.#...#.##...##",
  "##.##.#....#.......#.##..#.....",
  ".....##...##.##...##.........##",
  "#......#...#.......#...#...#...",
  "...##...........#...#..#.......",
  ".#.##.#..#........#....#.......",
  "#.#...#..#......##...#.#.##....",
  "##........####..#.#...#.#.##.##",
  "#..#.#.##......##.#.#..#.......",
  ".....#.........#..#.####....#..",
  "......##..#....#...#.#....#....",
  "#...##........#.........#.....#",
  ".#.#...#.#.#..#............##.#",
  ".#..#....#....#.....#...#.....#",
  "..###...#..#.....#.##.###...#.#",
  ".#.###..#..#...#.#...#.#......#",
  "#...#####......###........##...",
  ".....#.....#..#.#....#..##.....",
  "....##...#.#.##.#####...#....#.",
  ".#.#.........##.#.......#..##..",
  ".#...#.#...#...#....#.#...##.#.",
  ".##...#..#.#..#......#.#.#..##.",
  "..#.....#..#.....##.....#......",
  "..#........#..##...#.......###.",
  ".#....#.......#....#....#..#...",
  "....#......#.#.#.........#.....",
  "..##...#.#.#...#.#........#....",
  ".#.....####...##.#..#...##.....",
  "...#.....#...#...#....#....#...",
  ".........#..#.#.....#..#.#..#..",
  ".........##...........#.......#",
  "......#..#.....##...#.##.#.....",
  ".#......##........##...#.#.##..",
  ".....#.#..##...........#..#..#.",
  "...#.......#...#.#..#.##..#.##.",
  "...#.......#.....#.#...#.##.#..",
  "#.....#.............##.#..####.",
  ".#...#......#...##.#....#.#....",
  ".##..##.##....#.#.....#.......#",
  "...#...#....#....##.#..#....##.",
  "..............##....#.......#.#",
  ".#.#.#...##..#..#...###.#..#...",
  ".#.#...#.#..#.#..#...######..#.",
  "........#......#.#..#.#....#...",
  "..###.....###.#.##....#...##...",
  ".##.#.....#.......##.......#...",
  "..#..##...#..........#.#....#.#"
}

local function countTrees (map, direction)
  local currentPos = {x = 1, y = 1}
  local size = { x = string.len(map[1]), y = #map }
  local result = 0

  while currentPos.y + direction.y <= size.y do
    currentPos.x = ((currentPos.x + direction.x - 1) % size.x) + 1
    currentPos.y = currentPos.y + direction.y

    local square = string.sub(
      map[currentPos.y],
      currentPos.x,
      currentPos.x
    )

    if square == "#" then
      result = result + 1
    end
  end

  return result
end

print("Part 1:", countTrees(map, {x = 3, y = 1}))
print(
  "Part 2:",
  countTrees(map, {x = 1, y = 1})
  * countTrees(map, {x = 3, y = 1})
  * countTrees(map, {x = 5, y = 1})
  * countTrees(map, {x = 7, y = 1})
  * countTrees(map, {x = 1, y = 2})
)