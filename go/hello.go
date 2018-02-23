package main

import (
    "fmt"
    "net/http"
)

func helloWorld(w http.ResponseWriter, r *http.Request){
    w.Header().Set("Content-Type", "application/json")
    fmt.Fprintf(w, "{ \"message\": \"Hello World\" }")
}

func main() {
    http.HandleFunc("/", helloWorld)
    http.ListenAndServe(":8080", nil)
}
