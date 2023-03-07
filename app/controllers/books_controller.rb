class BooksController < ApplicationController
    def top
    end
    
    def index
        @list = Book.new
        @lists = Book.all
    end
    
    def show
        @lists = Book.find(params[:id])
    end
    
    def create
        list = Book.new(book_params)
        if list.save
            flash[:notice] = "Book was successfully created."
            redirect_to"/books/#{list.id}"
        else
            flash[:alrat] = "投稿失敗"
        end
    end
    
    def edit
        @lists = Book.find(params[:id])
    end
    
    def update
        @lists = Book.find(params[:id])
        if @lists.update(book_params)
            flash[:notice] = "Book was successfully update."
            redirect_to"/books/#{@lists.id}"
        else
            flash[:alrat] = "投稿失敗"
        end
        
    end
    
    def destroy
        @lists = Book.find(params[:id])
        @lists.destroy
        redirect_to'/books'
    end
    
    private
    
    def book_params
    params.require(:book).permit(:title, :body)
    
    end
end
