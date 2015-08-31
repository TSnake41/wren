var fiber = Fiber.new {
  IO.print("called")
  IO.print(Fiber.yield())
  IO.print("transferred")
}

fiber.call()     // expect: called
fiber.transfer() // expect: null
                 // expect: transferred
