class PostsController < ApplicationController
    def index
        @post = Post.letter(:name)
        respond_to do |format|
          format.html
          format.csv { send_data @posts.to_csv }
          format.xls # { send_data @products.to_csv(col_sep: "\t") }
        end
      end
      
      def import
        Post.import(params[:file])
        redirect_to root_url, notice: "Post imported."
      end
end
