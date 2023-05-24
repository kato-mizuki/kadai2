class BooksController < ApplicationController
  def new
    @books = Books.new(books_params)
    books.save
  end

  def idex
  end

  def show
  end

  def edit
  end
  private
  def books_params
    params.require(:books).permit(:title, :body)
  end
end
