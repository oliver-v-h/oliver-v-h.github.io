# Credit to https://gist.github.com/paulmach/7271283

cat <<EOF | tee /tmp/blah.go | go run /tmp/blah.go
/*
Serve is a very simple static file server in go
Usage:
	-p="8100": port to serve on
	-d=".":    the directory of static files to host
Navigating to http://localhost:8100 will display the index.html or directory
listing file.
*/
package main

import (
	"log"
	"net/http"
)

func main() {
	port := "8100"
	directory := "."

	http.Handle("/", http.FileServer(http.Dir(directory)))

	log.Printf("Serving %s on HTTP port: %s\n", directory, port)
	log.Fatal(http.ListenAndServe(":"+port, nil))
}

EOF
