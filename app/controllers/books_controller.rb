class BooksController < ApplicationController
  before_action :current_book, only: [:show]

  def index
    @books = Book.all
  end

  def show
    @book_conversations = @book.conversation
    # byebug
  end

  private

  def books_params
    params.requir(:book).permit(:title, :author, :page_count, :content, :url_link, :genre)
  end

  def current_book
    @book = Book.find(params[:id])
  end

end
