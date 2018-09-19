show1 :: Bool -> Bool -> String
-- intended usage: show1 isFemale isStaff
show1 True True = "female staff"
show1 True False = "female student"
show1 False True = "male staff"
show1 False False = "male student"

show2 :: Gender -> Role -> String
data Gender = Female | Male
data Role = Staff | Student