package main

import "fmt"
import "net/http"
import "log"
import "math"

func main() {
  http.HandleFunc("/", handler)
  log.Fatal(http.ListenAndServe(":8000", nil))
}

func handler(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintf(w, greeting("Code.education Rocks!") )
}

func greeting(message string) string {
  x := 0.0001
  for i:=0; i<= 1000000; i++ {
    x += math.Sqrt(x);
  }
 
  return fmt.Sprintf(message)
}
