dataSet <- list(
  list(
    gender="male", height=178, age=32,
    children=list(
      list(gender="male", age=5),
      list(gender="male", age=0))
  ),
  list(
    gender="female", height=166, age=30,
    children=list(
      list(gender="female", age=3))
  ),
  list(
    gender="male", height=170, age=42,
    children=list(
      list(gender="male", age=10),
      list(gender="female", age=8))
  ),
  list(
    gender="male", height=188, age=22,
    children=list()
  ),  
  list(
    gender="male", height=172, age=52,
    children=list(
      list(gender="female", age=25),
      list(gender="female", age=23))
  ),
  list(
    gender="female", height=160, age=42,
    children=list(
      list(gender="female", age=11))
  )
)

analysis <- list()
analysis$number_of_children <- list()

analysis$number_of_children[[1]] <-length(dataSet[[1]]$children)
analysis$number_of_children[[2]] <-length(dataSet[[2]]$children)
analysis$number_of_children[[3]] <-length(dataSet[[3]]$children)
analysis$number_of_children[[4]] <-length(dataSet[[4]]$children)
analysis$number_of_children[[5]] <-length(dataSet[[5]]$children)
analysis$number_of_children[[6]] <-length(dataSet[[6]]$children)

