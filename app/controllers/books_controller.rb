class BooksController < ApplicationController
 def index
   @books = Book.all
 end
 def show
   @book = Book.find_by(params[:id])
 end
  
  def new
    @book = Book.new
  end
  def edit
     @book = Book.find_by(params[:id])
  end
  
  def create
    #@book = Book.new(params[:books])
    #@book.save
    @book = Book.new(book_params)
     if @book.save
        redirect_to books_url , notice:  'Book successfully added'
     else
        render 'new'
     end
  end
  def update
  @book = Book.find_by(params[:id])
       if @book.update_attributes(book_params)
         # Handle a successful update.
           flash[:success] = "Profile updated"
           redirect_to @book
       else
           render 'edit'
       end
  end
  private
  def book_params
      params.require(:book).permit(:title, :isbn, :user_id, :quantity)
  end
end
