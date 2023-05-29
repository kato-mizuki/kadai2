class BooksController < ApplicationController
  protect_from_forgery
  def new
    @book = Book.new(books_params)
    books.save
  end

  def create
    @book = Book.new(books_params)
    @book.save
    redirect_to book_path(@book)
  end

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  private
  def books_params
    params.require(:book).permit(:title, :body)
  end
end
