class BooksController < ApplicationController
    def top
    end
    
    def index
        @list = Book.new
        @lists = Book.all
    end
    
    def create
        list = Book.new(book_params)
        list.save
        redirect_to'/books'
    end
    
    def show
        @lists = Book.find(params[:id])
    end

    def edit
        @lists = Book.find(params[:id])
    end
    
    def update
        @lists = Book.find(params[:id])
        @lists.update(book_params)
        redirect_to'/books'
    end
    
    private
    
    def book_params
    params.require(:book).permit(:title, :body)
    
    end
end
