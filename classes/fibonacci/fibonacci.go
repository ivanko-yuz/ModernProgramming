package main

// func fibRoot() {
// 	var a, b = 0, 1
// 	return func() int {
// 		a, b = b, a+b
// 		return a
// 	}
// }

func fib(n uint) uint {
	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	} else {
		return fib(n-1) + fib(n-2)
	}
}

func main() {
	fib(uint(10))
}
