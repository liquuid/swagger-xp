package api

import (
	"net/http"
)

type Garage struct {

}

func GarageInventoryGet(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "application/json; charset=UTF-8")
		w.WriteHeader(http.StatusOK)
}

