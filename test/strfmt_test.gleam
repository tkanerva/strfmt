import gleeunit
import gleeunit/should
import strfmt.{format, f, end}

pub fn main() {
  gleeunit.main()
}

pub fn format_single_test() {
  let name = "Joe"
  let str1 = 
      format("Hello {}.")
      |> f(name)
      |> end()

  str1 |> should.equal("Hello Joe.")
}

pub fn format_multiple_test() {
  let str1 =
    format("The location is {} and the sensor temperature is {} C.")
    |> f("living_room")
    |> f(27.5)
    |> end()

  str1 |> should.equal("The location is living_room and the sensor temperature is 27.5 C.")
}

pub fn format_with_literal_curlybraces_test() {
  let str1 =
    format("this {} contains curly braces: {{}}")
    |> f("string")
    |> end()
  
  str1 |> should.equal("this string contains curly braces: {}")
}

pub fn format_integer_test() {
  let value = 42
  let str1 = 
      format("meaning of life is {} according to literature.")
      |> f(value)
      |> end()

  str1 |> should.equal("meaning of life is 42 according to literature.")
}

pub fn format_float_test() {
  let value = 3.14159
  let str1 = 
      format("pi = {}")
      |> f(value)
      |> end()

  str1 |> should.equal("pi = 3.14159")
}

pub fn format_list_test() {
  let lst = ["a", "b", "c"]
  let str1 = 
      format("a sequence of letters: {}")
      |> f(lst)
      |> end()

  str1 |> should.equal("a sequence of letters: [a,b,c]")
}
