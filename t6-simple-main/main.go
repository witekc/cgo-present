package main

import (
    "log"
    "net/http"
)

func main() {

    // public views
    //http.HandleFunc("/", HandleIndex)

    log.Fatal(http.ListenAndServe(":8080", nil))
}