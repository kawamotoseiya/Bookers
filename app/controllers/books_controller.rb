class BooksController < ApplicationController
    def new
        @book = Book.new
    end
    def create
    	@book = Book.new(book_params)
    	@book.user_id = current_user.id
    	if  @book.save
    		redirect_to book_path(@book.id)
            flash[:notice] = "Book was successfully created."
    	else render :user
    	end
    end
    def index
    	@books = Book.all
        @book = Book.new
    end
    def show
    	@book = Book.find(params[:id])
    end
    def destroy
    	@book = Book.find(params[:id])
    	@book.destroy
    	redirect_to books_path
    end
    def edit
        @book = Book.find(params[:id])
    end
    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
           redirect_to book_path(@book)
           flash[:notice] = "Book was successfully updated."
        else
           render :edit
        end
    end
    private
    def book_params
    	params.require(:book).permit(:name , :body)
    end
end
