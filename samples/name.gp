use stdio as io from "stdio"

set first_names = [
    "Chad"
    , "Brad"
    , "Bradley"
    , "Chadley"
    , "Paul"
]

set last_names = [
    "White"
    , "Brown"
    , "Black"
    , "Lee"
    , "Escobar" 
]

each name in first_names {
    io::out("#{name} #{last_names[Integer::random(last_names.length()]}")
}