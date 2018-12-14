package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"strconv"
	"strings"
)

var todos = []string{"Buy a milk", "Go to sleep"}

func handleGetTodos(w http.ResponseWriter, r *http.Request) {
	output, err := json.Marshal(todos)
	if err != nil {
		fmt.Println("errors", err)
		return
	}
	w.Write(output)
}

func handleCreateTodos(w http.ResponseWriter, r *http.Request) {
	if r.Method == http.MethodPost {
		var p = make([]byte, 100)
		n, _ := r.Body.Read(p) //passing array
		todos = append(todos, string(p[:n]))
	}
}

func handleDeleteTodo(w http.ResponseWriter, r *http.Request) {
	if r.Method == http.MethodGet {
		parts := strings.Split(r.URL.Path, "/")
		todoIndex, _ := strconv.Atoi(parts[len(parts)-1])
		todos = append(todos[:todoIndex], todos[todoIndex+1:]...)
	}
}

func main() {
	http.HandleFunc("/todos", handleGetTodos)
	http.HandleFunc("/todo", handleCreateTodos)
	http.HandleFunc("/todo/", handleDeleteTodo)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
