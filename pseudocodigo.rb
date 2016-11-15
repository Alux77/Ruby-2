students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]



def best_students(students)
  best_students = []  
  x, y        = 0, 0  #we make 2 variables (x=student & y=position of array within main array).

   while y < students.length  #While "y" is smaller than the arrays within the main array.
    current_student = students[y][x] #current_student is equal to the array position and the studen position within said array.
    if current_student[1] == 10 #If the student score is equal to "10" push the student name inside the empty array.
      best_students.push(current_student[0]) 
    end

    if x == (students[y].length - 1) #makes an itineration between arrays looking for another 10 student.
      x = 0
      y += 1
    else
      x += 1
    end
  end
  best_students #return the array.
end 

# #test
best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]