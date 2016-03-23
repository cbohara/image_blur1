# Build a class that allows us to build a new image with the data we specify. 
# Make it possible for the class to output the image to the screen. 

class Image

  def initialize(array)
    @row1 = array[0][0..3].join
    @row2 = array[1][0..3].join
    @row3 = array[2][0..3].join
    @row4 = array[3][0..3].join
  end

  def output_image
    puts @row1
    puts @row2
    puts @row3
    puts @row4
  end

end

# Your goal is to have the following code work:
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image 