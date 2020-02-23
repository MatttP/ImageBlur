class Image

  def initialize(picture)
    @picture = picture
  end

  def get_ones
    ones=[]
    @picture.each_with_index do |row, row_number|
      row.each_with_index do |item, col_number|
        if item==1
          ones << [row_number,col_number]
        end
      end
    end
    ones
  end
  
  def blur!(blur_distance)
    ones = get_ones
    @picture.each_with_index do |row,row_number|
      row.each_with_index do |item,col_number|
        ones.each do |found_row_number, found_col_number|
          if manhattan_distance(col_number, row_number, found_col_number, found_row_number)<= blur_distance
            @picture[row_number][col_number]=1
          end
        end
      end
    end
  end

  def manhattan_distance()
end