package main

import (
	"fmt"
	"log"
	"net/http"
)

func runServer() {
	initHandlers()
	initCacher()
	fmt.Println("Starting Cholesky solving server on port 8082...")
	fs := http.FileServer(http.Dir("web"))
	http.Handle("/", fs)
	http.HandleFunc("/solve", solveHandler)
	http.HandleFunc("/start", startHandler)
	http.HandleFunc("/stop/", stopHandler)
	http.HandleFunc("/result/", resultHandler)
	log.Fatal(http.ListenAndServe(":8082", nil))
}

func main() {
	runServer()
}
