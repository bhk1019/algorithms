def blur 
  width = self.img_array[0].length
  height = self.img_array.length

  blurred_image_array = self.img_array

  height.times do |i|
    width.times do |j|
      if self.img_array[j] == 1
        blurred_image.img_array[i][j] = 1

        if 0 < j
          blurred_image.img_array[i][j-1] = 1
        end 
        if j < width - 1
          blurred_image.img_array[i][j+1] = 1
        end
        if 0 < i 
          blurred_image.img_array[i-1][j] = 1
        end
        if i < height - 1
          blurred_image.img_array[i+1][j] = 1
        end

      end
    end
  end

  self.img_array = blurred_image_array

end 