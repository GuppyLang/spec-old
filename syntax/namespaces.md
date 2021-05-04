# Namespaces 
### Declaration
Namespaces are declared using `set` syntax, however unlike most assignments with `set` there is no equal sign. Namespace naming convention is uppercase CamelCase.

Example:
```
set MyNamespace::{

}
```

### Setting Values
Namespaces should be a sequence of `set` keywords followed by variables. All variables declared in a namespace is bound to that namespace. 

Example:
```
set MyNamespace::{
    set x = 1
    set y = 2
    set z = 3
}
```
### Accessing Values
```
MyNamespace::x # => 1
MyNamespace::y # => 2 
MyNamespace::z # => 3

#-- OR --#

MyNamespace[x] # => 1
MyNamespace[y] # => 2
MyNamespace[z] # => 3
```
### Mutability
Is important to know that values in namespace can be made mutable. Making the namespace itself mutable is also possible, but is not required to change mutable variables within it. 

Examples: 
```
set MyNamespace::{
    set mut x = 1
    set mut y = 2
    set z = 3
}

MyNamespace::x = 2
MyNamespace::y = 3 
MyNamespace::z = 4 # Error, z is a contant 
```
### Instances
Namespaces can also be instantiated, making them into a new independent object-like data type. All namespaces will have a `create()` method and can be made into a new `Instance` using it. 

Example:
```
set MyNamespace::{
    ...
}

set my_instance = MyNamespace::create()
```

`create()` can also be used with arguments, in which the namespace is defined with parenthesis enclosing it's arguments.

```
set MyNamespace(a, b)::{
    set x = a 
    set y = b
}

set my_instance = MyNamespace::create(5, 10)
``` 
