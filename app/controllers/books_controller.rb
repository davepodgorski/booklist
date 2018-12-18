class BooksController < ApplicationController
  def index
    @books = Book.all
      respond_to do |format|
        format.html
        format.js
        format.xml { render xml: @book }
        format.text
        format.csv do
          render plain: Book.generate_csv(@books)
          end
          format.json do
            render json: @books
          end
    end

  end


  def show

  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
  end

      def edit
          @book = Book.find(params[:id])
      end

      def update

      end

      def destroy

      end
  end
