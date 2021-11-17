matrixA =[
  [1, 2, 3],
  [4, 5, 6]
]

matrixB =[
  [7, 8],
  [9,10],
  [11,12]
]

def printMatrix(matrix)
  for array in matrix
    array.select{|x| print x.to_s.rjust(4," ")}
    puts
  end
end

puts "MatrixA: "
printMatrix(matrixA)

puts

puts "MatrixB: "
printMatrix(matrixB)

puts

puts "Matrix multiplication"
newMatrix = multiplyMatrix(matrixA, matrixB)
printMatrix(newMatrix)
