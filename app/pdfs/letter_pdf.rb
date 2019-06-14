class LetterPdf < Prawn::Document
  def initialize(letter, view)
    super(top_margin: 40)
    @letter = letter
    @view = view
    order_number
    posts
    total_price
  end
  
  def letter_number
    text "Letter \##{@letter.letter_number}", size: 30, style: :bold
  end
  
  def posts
    move_down 20
    table post_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def post_rows
    [["Product", "Qty", "Unit Price", "Full Price"]] +
    @letter.posts.map do |item|
      [item.name, item.quantity, price(item.unit_price), price(item.full_price)]
    end
  end
  
  def price(num)
    @view.number_to_currency(num)
  end
  
  def total_price
    move_down 15
    text "Total Price: #{price(@letter.total_price)}", size: 16, style: :bold
  end
end
