matrixA =[
  [1, 1],
  [1, 1]
]

matrixB =[
  [1, 1],
  [1, 1]
]
class Matrix

  attr_accessor :array2D

  def initialize(array2D)
    @array2D = array2D
  end

  def printMatrix
    for array in @array2D
      array.select{|x| print x.to_s.rjust(4," ")}
      puts
    end
  end

  def +mx2
    matrix1=@array2D
    matrix2=mx2.array2D
    if matrix1.length==matrix2.length && matrix1[0].length==matrix2[0].length
      matrixC=Array.new(matrix1.length){Array.new(matrix1[0].length){0}}
      for i in 0..matrixC.length-1
        for j in 0..matrixC[0].length-1
          matrixC[i][j]= matrix1[i][j]+matrix2[i][j]
        end
      end
      matrixS=Matrix.new(matrixC)
      return matrixS
    else
      puts "You can sum only matrixes with the same size"
    #  matrixS=Matrix.new([])
    end

  end

  def *mx2
    matrix1=@array2D
    matrix2=mx2.array2D
    if matrix1.length==matrix2[0].length && matrix1[0].length==matrix2.length
      multipliedMatrix = Array.new(matrix1.length){Array.new(matrix2[0].length){0}}

      for i in 0..multipliedMatrix.length-1
        for j in 0..multipliedMatrix[0].length-1
          for k in 0..matrix1[0].length-1
            multipliedMatrix[i][j]+=matrix1[i][k]*matrix2[k][j]
          end
        end
      end
      matrixM=Matrix.new(multipliedMatrix)
    else
      puts "You can multiply only matrixes if matrix1 has the same number of rows as matrix2 has columns and matrix1 has the same number of columns as matrix2 has rows"
      matrixM=Matrix.new([])
    end
    return matrixM
  end

  def transposeMatrix
    matrix1=@array2D
      transposedMatrix=Array.new(matrix1[0].length){Array.new(matrix1.length){0}}

      for i in 0..matrix1.length-1
        for j in 0..matrix1[0].length-1
          transposedMatrix[j][i]= matrix1[i][j]
        end
      end
      matrixM=Matrix.new(transposedMatrix)
    return matrixM
  end
  
end



#printMatrix(matrixA)
mxA = Matrix.new(matrixA)
puts "MatrixA: "
mxA.printMatrix
puts

puts "MatrixB: "
mxB = Matrix.new(matrixB)
mxB.printMatrix
puts


puts "Matrix sum"
matrixSum = mxA+mxB
matrixSum.printMatrix

puts

puts "Matrix multiplication"
matrixMultiplied = mxA*mxB
matrixMultiplied.printMatrix
puts

puts "Matrix transposition"
matrixTransposed = mxA.transposeMatrix
matrixTransposed.printMatrix
