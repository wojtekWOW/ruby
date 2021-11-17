matrixA =[
  [1, 2, 3],
  [4, 5, 6]
]

matrixB =[
  [7, 8],
  [9, 10],
  [11, 12]
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

puts "Matrix sum"
matrixSum = sumMatrix(matrixA, matrixB)
printMatrix(matrixSum)

puts

puts "Matrix multiplication"
matrixMultiplied = multiplyMatrix(matrixA, matrixB)
printMatrix(matrixMultiplied)
puts

puts "Matrix transposition"
matrixTransposed = transposeMatrix(matrixA)
printMatrix(matrixTransposed)
