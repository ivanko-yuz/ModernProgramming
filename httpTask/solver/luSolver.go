package solver

import (
	"encoding/json"
	"io/ioutil"
	"log"
	"net/http"

	. "../models"
)

func calcLU(rw http.ResponseWriter, req *http.Request) {
	body, err := ioutil.ReadAll(req.Body)
	if err != nil {
		panic(err)
	}
	log.Println(string(body))
	var t PrintManager
	err = json.Unmarshal(body, &t)
	if err != nil {
		panic(err)
		print("ERROR")
	}
	println("Input:")
	a_printer := PrintManager{Matrix: t.Matrix}
	a_printer.Print("t")
	println("OUtput:")

	data := ShowLU(t.Matrix)

	jData, err := json.Marshal(data)
	if err != nil {
		// handle error
	}
	rw.Header().Set("Content-Type", "application/json")
	rw.Write(jData)
}

// func main() {
// 	http.HandleFunc("/calcLU", calcLU)
// 	log.Fatal(http.ListenAndServe(":8082", nil))
// }
