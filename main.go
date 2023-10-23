package main

import (
	"net/http"
	"text/template"
)

// template declaration
var tpl *template.Template

// Commented the code
func main() {
	
	http.HandleFunc("/", index)
	http.ListenAndServe(":8080", nil)

}

func index(w http.ResponseWriter, r *http.Request) {

	if r.Method != "GET" {
		return
	}
	
	w.Write([]byte("OK"))
}