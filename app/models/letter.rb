class Letter < ActiveRecord::Base
  has_many :posts

  def total_price
    # convert to array so it doesn't try to do sum on database directly
    posts.to_a.sum(&:full_price)
  end
end

def full_price
  unit_price * quantity
end



def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |post|
      csv << post.attributes.values_at(*column_names)
    end
  end
end

## this is 
def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Post.create! row.to_hash 
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Csv.new(file.path, nil, :ignore)
  when ".xls" then Excel.new(file.path, nil, :ignore)
  when ".xlsx" then Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
 
  end
end