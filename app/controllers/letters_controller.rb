class LettersController < ApplicationController
  def index
    @letter = Letter.all
  end

  def show
    @letter = Letter.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = LetterPdf.new(@letter, view_context)
        send_data pdf.render, filename: "Letter_#{@letetr.letter_number}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end
end