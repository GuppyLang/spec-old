# Functions
### Declaration
Functions are declared using the `fn` keyword. Guppy functions follow a similar syntax to many other programming languages. 

Examples: 
```
fn say_hello() {
    io::out("Hello!")
}
```
```
fn greet(name) {
    io::out("Hello, #{name}!")
}
```

The above examples are for dynamic Guppy, below are some of the examples converted to static form. 
```
fn greet(name: String) {
    io::out("Hello, #{name}!")
}
```
### Anonymous Functions
```
fn (a, b) {
    ...
}
```
#### Note:
Originally, anonymous functions were intended to be not allowed, however have decided to be allowed for user flexibility and avoiding unnecessary namespace pollution. 