include!("input.rs");

fn main() {
    let preamble_size = 25;
    let lines: Vec<u64> = INPUT.lines().map(|l| l.parse::<u64>().unwrap()).collect();
    let mut error: u64 = 0;

    for i in preamble_size..lines.len() - 1 {
        let preamble = &lines[i-preamble_size..i];
        let current = lines[i];

        if !check(preamble, current) {
            error = current;
            break;
        }
    }

    println!("Part 1: {}", error);

    for index in 0..lines.len() {
        let mut result = 0;
        let mut min = u64::MAX;
        let mut max = 0;

        for i in index..lines.len()-1 {
            let current = lines[i];
            result += current;
            if result > error {
                break;
            }

            if current > max {
                max = current;
            }

            if current < min {
                min = current;
            }

            if result == error && min != max {
                println!("Part 2: {}", min + max);
            }
        }
    }
}

fn check(preamble: &[u64], value: u64) -> bool {
    for i in 0..preamble.len() - 1 {
        for j in i + 1..preamble.len() {
            if preamble[i] + preamble[j] == value {
                return true;
            }
        }
    }
    return false;
}
