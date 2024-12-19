package main

import (
	"net/http"
)

func (app *app) Routes() http.Handler {
	mux := http.NewServeMux()
	mux.HandleFunc("/", app.getHome)

	return mux
}