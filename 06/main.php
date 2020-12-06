<?php

declare(strict_types=1);

function countUniqueAnswers(string $group): int {
    return count(
        array_unique(
            str_split(
                str_replace("\n", "", $group),
            ),
        ),
    );
}

function countCommonAnswers(string $group): int {
    $persons = array_map(
        fn($person) => str_split($person),
        explode("\n", $group),
    );

    return count(
        array_reduce($persons, 'array_intersect', $persons[0]),
    );
}

$input = require('input.php');
$groups = explode("\n\n", $input);

$result = array_reduce(
    $groups,
    fn($acc, $group) => $acc + countUniqueAnswers($group),
    0
);
echo "Part 1: {$result}\n";

$result = array_reduce(
    $groups,
    fn($acc, $group) => $acc + countCommonAnswers($group),
    0
);
echo "Part 2: {$result}\n";
