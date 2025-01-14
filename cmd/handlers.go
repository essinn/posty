package main

import (
	"html/template"
	"net/http"
)

func (app *app) getHome(w http.ResponseWriter, r *http.Request) {
	posts, err := app.posts.All()
	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}

	t, err := template.ParseFiles("./assets/templates/index.html")
	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}

	t.Execute(w, map[string]any{"Posts": posts})
}