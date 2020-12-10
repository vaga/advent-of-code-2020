const input = `71
183
111
89
92
142
25
101
52
86
18
22
70
2
135
163
34
143
153
35
144
24
23
94
100
102
17
57
76
182
134
38
7
103
66
31
11
121
77
113
128
82
99
148
137
41
32
48
131
60
127
138
73
28
10
84
180
63
125
53
176
165
114
145
152
72
107
167
59
164
78
126
118
136
83
79
58
14
106
69
51
39
157
42
177
173
93
141
3
33
13
19
45
154
95
170
54
181
6
151
1
112
96
115
85
108
166
160
40
122
12`

let numbers = input.split("\n").map(n => parseInt(n, 10)).sort((a, b) => a - b)
numbers.unshift(0)
numbers.push(numbers[numbers.length - 1] + 3)
const deltaCount = [0, 0, 0]
for (let i = 0; i < numbers.length - 1; i++) {
    deltaCount[numbers[i+1] - numbers[i] - 1]++
}

console.log('Part 1:', deltaCount[0] * deltaCount[2])

numbers = numbers.reverse()
const result = [1]
for (let i = 1; i < numbers.length; i++) {
    let count = 0
    for (let j = i - 1; j >= 0 && numbers[j] - numbers[i] <= 3; j--) {
        count += result[j]
    }
    result[i] = count
}

console.debug('Part 2:', result[result.length - 1])
