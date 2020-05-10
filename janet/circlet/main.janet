(import circlet)

(defn myserver
 "A simple HTTP server"
 [req]
 {:status 200
  :headers {"Content-Type" "text/plain"}
  :body "Hello World"})

(circlet/server myserver 8000 "0.0.0.0")