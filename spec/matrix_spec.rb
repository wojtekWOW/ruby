#require 'spec_helper'
require 'lib/matrix'

describe Matrix do

    it "should be [[1,2],[4,5]]" do
      matrix = Matrix.new ([[1,2],[4,5]])
      matrix.array2D.should == [[1,2],[4,5]]
      #  expect(Matrix.new([[1,2],[4,5]]).get()).to eq [[1,2],[4,5]]
    end

    it "print matrix [[1,2],[4,5]]" do
      matrix = Matrix.new ([[1,2],[4,5]])
      matrix.printMatrix.should == [[1,2],[4,5]]
      #  expect(Matrix.new([[1,2],[4,5]]).get()).to eq [[1,2],[4,5]]
    end

    it "it should add two matrixes " do
      m1 = Matrix.new([[1,1],[1,1]])
      m2 = Matrix.new([[1,1],[1,1]])
      expect((m1+m2).array2D).to eq [[2,2],[2,2]]
    end

    it "it should inform about matrix size requirement for adding " do
        m1 = Matrix.new([[1,1,1],[1,1,1]])
        m2 = Matrix.new([[1,1],[1,1]])
        #expect((m1+m2).array2D).to eq []

        expect do
          m1+m2
        end.to output("You can sum only matrixes with the same size\n").to_stdout
    end

    it "it should multiply two matrixes " do
      m1 = Matrix.new([[2,2],[2,2]])
      m2 = Matrix.new([[2,2],[2,2]])
      expect((m1*m2).array2D).to eq [[8,8],[8,8]]
    end

    it "it should multiply two matrixes " do
      m1 = Matrix.new([[2,2,2],[2,2,2]])
      m2 = Matrix.new([[2,2],[2,2],[2,2]])
      expect((m1*m2).array2D).to eq [[12,12],[12,12]]
    end

    it "it should inform about matrix size requirement for multiplication" do
      m1 = Matrix.new([[1,1,1],[1,1,1]])
      m2 = Matrix.new([[1,1],[1,1]])
      expect do
        m1*m2
      end.to output("You can multiply only matrixes if matrix1 has the same number of rows as matrix2 has columns and matrix1 has the same number of columns as matrix2 has rows\n").to_stdout
    end

end
