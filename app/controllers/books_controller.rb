class BooksController < ApplicationController
  protect_from_forgery
  def new
    @books = Books.new(books_params)
    books.save
  end

  def create
    @book = Book.new(books_params)
    @book.save
    redirect_to book_path(@book)
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params_[:id])
  end

  def edit
  end

  private
  def books_params
    params.require(:book).permit(:title, :body)
  end
end
