package main

import(
    "fmt"
    "strings"
    "strconv"
    "errors"
    "regexp"
)

var MissingKeyError = errors.New("missing key")

func isInRange(v int, min int, max int) error {
    if v >= min && v <= max {
        return nil
    }
    return fmt.Errorf("should be at least %d and at most %d", min, max)
}

func isIn(str string, l []string) error {
    for _, v := range l {
        if str == v {
            return nil
        }
    }
    return fmt.Errorf("should be exactly one of: %v", l)
}

func validateProp(key string, value string) error {
    switch key {
    case "byr":
        byr, _ := strconv.Atoi(value)
        if err := isInRange(byr, 1920, 2002); err != nil {
            return err
        }
    case "iyr":
        iyr, _ := strconv.Atoi(value)
        if err := isInRange(iyr, 2010, 2020); err != nil {
            return err
        }
    case "eyr":
        eyr, _ := strconv.Atoi(value)
        if err := isInRange(eyr, 2020, 2030); err != nil {
            return err
        }
    case "hgt":
        num, _ := strconv.Atoi(value[0:len(value)-2])
        unit := value[len(value)-2:]
        switch unit {
        case "cm":
            err := isInRange(num, 150, 193)
            if err != nil {
                return err
            }
        case "in":
            err := isInRange(num, 59, 76)
            if err != nil {
                return err
            }
        default:
            return fmt.Errorf("should be exactly one of: [cm in]")
        }
    case "hcl":
        re := regexp.MustCompile("^#[0-9a-f]{6}$")
        if !re.MatchString(value) {
            return fmt.Errorf("should be an hexadecimal color")
        }
    case "ecl":
        if err := isIn(value, []string {"amb", "blu", "brn", "gry", "grn", "hzl", "oth"}); err != nil {
            return err
        }
    case "pid":
        re := regexp.MustCompile("^[0-9]{9}$")
        if !re.MatchString(value) {
            return fmt.Errorf("should be a nine-digit number")
        }
    default:
        return fmt.Errorf("should be a valid property key")
    }

    return nil
}

func parseProperties(raw string) map[string]string {
    rawProperties := strings.Fields(raw)

    passport := make(map[string]string)
    for _, rawProperty := range rawProperties {
        p := strings.Split(rawProperty, ":")
        passport[p[0]] = p[1]
    }

    return passport
}

func ValidatePassport(passport string) error {
    properties := parseProperties(passport)

    for _, key := range []string{"byr", "iyr", "eyr", "hgt", "hcl", "ecl", "pid"} {
        value, ok := properties[key]
        if !ok {
            return fmt.Errorf("property `%v` was not found: %w", key, MissingKeyError)
        }

        if err := validateProp(key, value); err != nil {
            return fmt.Errorf("property `%v:%v` is invalid: %v", key, value, err)
        }
    }

    return nil
}

func main() {
    passports := strings.Split(Input, "\n\n")

    result1 := 0
    result2 := 0
    for _, passport := range passports {
        err := ValidatePassport(passport)

        if (!errors.Is(err, MissingKeyError)) {
            result1++
        }

        if err == nil {
            result2++
        } else {
            fmt.Println(err)
        }
    }
    fmt.Printf("\nPart 1: %d\nPart 2: %d\n", result1, result2)
}
