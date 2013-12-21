class Grid
  def initialize
    # puzzle should indicate fixed size and
    # grid should prevent it from outgrowing it
    @grid = Hash.new("")
    sample_data
  end
  
  def grid
    @grid
  end

  def row(int)
    row = {}
    @grid.each_key do |key|
      if key[1]==int
        row.store(key, @grid[key])
      end
    end
    row
  end

  def column(int)
    column = {}
    @grid.each_key do |key|
      if key[0]==int
        column.store(key, @grid[key])
      end
    end
    column
  end
  
  def update_value(up, across, value)
    #validate presence of cell!
    @grid[[up, across]] = value
  end
  
  def sample_data
    update_value(0,0, "A")
    update_value(0,1, "L")
    update_value(0,2, "B")
    update_value(1,0, "K")
  end

end
