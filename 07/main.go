package main

import(
    "fmt"
    "regexp"
    "strconv"
    "strings"
)

type Edge struct {
    src string
    dst string
    weight int
}

type Graph struct {
    Head map[string]*Node
}

type Node struct {
    dst string
    weight int
    next map[string]*Node
}


func NewGraph(edges []Edge) Graph {
    head := make(map[string]*Node)
    for _, edge := range edges {
        head[edge.src] = &Node{
            dst: edge.src,
            next: make(map[string]*Node),
        }
    }

    for _, edge := range edges {
        if edge.dst != "" {
            node := &Node {
                dst: edge.dst,
                weight: edge.weight,
                next: head[edge.dst].next,
            }
            head[edge.src].next[edge.dst] = node
        }
    }

    return Graph {
        Head: head,
    }
}

func CountContainedBagColors(graph Graph, bagName string) int {
    result := 0

    var recursiveCount func(node *Node, bagName string) int
    recursiveCount = func(node *Node, bagName string) int {
        if node.dst == bagName {
            return 1
        }

        if len(node.next) == 0 {
            return 0
        }

        for _, n := range node.next {
            count := recursiveCount(n, bagName)
            if count > 0 {
                return 1
            }
        }

        return 0
    }

    for _, node := range graph.Head {
        result += recursiveCount(node, bagName)
    }

    return result - 1
}


func CountIndividualBags(graph Graph, bagName string) int {
    var recursiveCount func(node *Node) int
    recursiveCount = func(node *Node) int {
        if len(node.next) == 0 {
            return 1
        }

        count := 1
        for _, n := range node.next {
            tmp := n.weight * recursiveCount(n)
            count += tmp
        }

        return count
    }

    return recursiveCount(graph.Head[bagName]) - 1
}


func main() {
    cleanRegex := regexp.MustCompile(` bag[s]{0,1}\.{0,1}`)

    lines := strings.Split(Input, "\n")
    edges := make([]Edge, 0)
    for _, line := range lines {
        s := strings.Split(line, " bags contain ")
        src := s[0]
        bags := strings.Split(s[1], ", ")


        for _, bag := range bags {
            n := strings.SplitN(
                cleanRegex.ReplaceAllString(bag, ""),
                " ",
                2,
            )

            edge := Edge{}
            edge.src = src

            if n[0] == "no" && n[1] == "other" {
                edge.dst = ""
                edge.weight = 1
            } else {
                edge.dst = n[1]
                edge.weight, _ = strconv.Atoi(n[0])
            }

            edges = append(edges, edge)
        }
    }

    graph := NewGraph(edges)
    fmt.Println("Part 1:", CountContainedBagColors(graph, "shiny gold"))
    fmt.Println("Part 2:", CountIndividualBags(graph, "shiny gold"))
}
