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

def sumMatrix(matrix1, matrix2)
  if matrix1.length==matrix2.length && matrix1[0].length==matrix2[0].length
    matrixC=Array.new(matrix1.length){Array.new(matrix1[0].length){0}}

    for i in 0..matrixC.length-1
      for j in 0..matrixC[0].length-1
        matrixC[i][j]= matrix1[i][j]+matrix2[i][j]
      end
    end
  else
    puts "You can sum only matrixes with the same size "
    matrixC=[]
  end
  return matrixC
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
