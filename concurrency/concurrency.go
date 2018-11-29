package main

import (
	"fmt"
	"time"
)

func snail(finished chan bool) {
	fmt.Println("Sanil started")
	for i := 1; i < 10; i++ {
		fmt.Println(".")
		time.Sleep(time.Second)
	}
	fmt.Println("Snail ended")
	finished <- true
}

func main() {
	finished := make(chan bool)
	go snail(finished)
	timeout := time.After(10 * time.Second)
	select {
	case <-finished:
	case <-timeout:
		fmt.Println("timeout")
	}
}

// func pinger(c chan string) {
// 	for i := 0; ; i++ {
// 		c <- "ping"
// 	}
// }

// func printer(c chan string) {
// 	for {
// 		msg := <-c
// 		fmt.Println(msg)
// 		time.Sleep(time.Second * 1)
// 	}
// }

// func main2() {
// 	c1 := make(chan string)
// 	c2 := make(chan string)

// 	go func() {
// 		for {
// 			c1 <- "from 1"
// 			time.Sleep(time.Second * 2)
// 		}
// 	}()

// 	go func() {
// 		for {
// 			c2 <- "from 2"
// 			time.Sleep(time.Second * 3)
// 		}
// 	}()

// 	go func() {
// 		for {
// 			select {
// 			case msg1 := <-c1:
// 				fmt.Println("Message 1", msg1)
// 			case msg2 := <-c2:
// 				fmt.Println("Message 2", msg2)
// 			case <-time.After(time.Second * 10):
// 				fmt.Println("timeout")

// 			}
// 		}
// 	}()

// 	var input string
// 	fmt.Scanln(&input)
// }
