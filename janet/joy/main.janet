(import joy)

(defn home [request]
  (joy/render :text "Hello World"))

(def routes 
  [[:get "/" home]])

(def app
  (joy/handler routes))

(joy/server app 8000 "0.0.0.0")

