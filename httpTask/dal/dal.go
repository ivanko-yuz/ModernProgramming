package dal

import (
	"log"

	. "../models"
	mgo "gopkg.in/mgo.v2"
	"gopkg.in/mgo.v2/bson"
)

type AnswerDAO struct {
	Server   string
	Database string
}

var db *mgo.Database

const (
	COLLECTION = "answers"
)

func (m *AnswerDAO) Connect() {
	session, err := mgo.Dial(m.Server)
	if err != nil {
		log.Fatal(err)
	}
	db = session.DB(m.Database)
}

func (m *AnswerDAO) FindAll() ([]Answer, error) {
	var answers []Answer
	err := db.C(COLLECTION).Find(bson.M{}).All(&answers)
	return answers, err
}

func (m *AnswerDAO) FindById(id string) (Answer, error) {
	var answer Answer
	err := db.C(COLLECTION).FindId(bson.ObjectIdHex(id)).One(&answer)
	return answer, err
}

func (m *AnswerDAO) Insert(answer Answer) error {
	err := db.C(COLLECTION).Insert(&answer)
	return err
}

func (m *AnswerDAO) Delete(answer Answer) error {
	err := db.C(COLLECTION).Remove(&answer)
	return err
}

func (m *AnswerDAO) Update(answer Answer) error {
	err := db.C(COLLECTION).UpdateId(answer.ID, &answer)
	return err
}
