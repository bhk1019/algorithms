class Image
  attr_accessor :img_array

  def initialize(img_array)
    @img_array = img_array
  end

  def output_image
    self.img_array.each do |i|
      puts "#{i.join}\n"
    end
  end

  def blur
    width = self.img_array[0].length
    height = self.img_array.length
    blurred_image_array = Array.new(height){ Array.new(width, 0) }

    height.times do |i|
      width.times do |j|
        if self.img_array[i][j] == 1
          blurred_image_array[i][j] = 1
          
          if 0 < j
            blurred_image_array[i][j-1] = 1        
          end 
          if j < width - 1
            blurred_image_array[i][j+1] = 1
            
          end
          if 0 < i 
            blurred_image_array[i-1][j] = 1
            
          end
          if i < height - 1
            blurred_image_array[i+1][j] = 1
          end

        end
      end
    end

    self.img_array = blurred_image_array

    # blurred_image_array.each do |i|
    #   puts "#{i.join}\n"
    # end
    # puts "\n"
  end
end
image = Image.new([
  [0, 0, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])
image.output_image
puts "\n"
image.blur
image.output_image