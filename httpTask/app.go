package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"

	. "./dal"
	. "./models"

	"github.com/gorilla/mux"
	"gopkg.in/mgo.v2/bson"
)

var dao = AnswerDAO{}

func AllAnswersEndPoint(w http.ResponseWriter, r *http.Request) {
	answers, err := dao.FindAll()
	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}
	respondWithJson(w, http.StatusOK, answers)
}

func FindAnswerEndpoint(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	answer, err := dao.FindById(params["id"])
	if err != nil {
		respondWithError(w, http.StatusBadRequest, "Invalid Answer ID")
		return
	}
	respondWithJson(w, http.StatusOK, answer)
}

func CreateAnswerEndPoint(w http.ResponseWriter, r *http.Request) {

	body, err := ioutil.ReadAll(r.Body)
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
	var answer Answer
	answer.ID = bson.NewObjectId()
	answer.MatrixL = data.MatrixL
	answer.MatrixU = data.MatrixU

	if err := dao.Insert(answer); err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}
	respondWithJson(w, http.StatusCreated, answer)
}

func UpdateAnswerEndPoint(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "not implemented yet !")
}

func DeleteAnswerEndPoint(w http.ResponseWriter, r *http.Request) {
	defer r.Body.Close()
	var answer Answer
	if err := json.NewDecoder(r.Body).Decode(&answer); err != nil {
		respondWithError(w, http.StatusBadRequest, "Invalid request payload")
		return
	}
	if err := dao.Delete(answer); err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}
	respondWithJson(w, http.StatusOK, map[string]string{"result": "success"})
}

func respondWithError(w http.ResponseWriter, code int, msg string) {
	respondWithJson(w, code, map[string]string{"error": msg})
}

func respondWithJson(w http.ResponseWriter, code int, payload interface{}) {
	response, _ := json.Marshal(payload)
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	w.Write(response)
}

func init() {

	dao.Server = "localhost"
	dao.Database = "answers_db"
	dao.Connect()
}

func main() {
	// 	http.HandleFunc("/calcLU", calcLU)
	// 	log.Fatal(http.ListenAndServe(":8082", nil))
	r := mux.NewRouter()
	r.HandleFunc("/Answers", AllAnswersEndPoint).Methods("GET")
	r.HandleFunc("/Answers", CreateAnswerEndPoint).Methods("POST")
	r.HandleFunc("/Answers", UpdateAnswerEndPoint).Methods("PUT")
	r.HandleFunc("/Answers", DeleteAnswerEndPoint).Methods("DELETE")
	r.HandleFunc("/Answers/{id}", FindAnswerEndpoint).Methods("GET")
	if err := http.ListenAndServe(":3000", r); err != nil {
		log.Fatal(err)
	}
}
