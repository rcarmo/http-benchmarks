package main

import (
  "github.com/abahmed/gearbox"
  "github.com/valyala/fasthttp"
)

func main() {
  // Setup gearbox
  gearbox := gearbox.New()
  
  // Define your handlers
  gearbox.Get("/", func(ctx *fasthttp.RequestCtx) {
	ctx.Response.SetBodyString("Hello World!")
  })

  // Start service
  gearbox.Start(":8000")
}
