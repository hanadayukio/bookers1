class BooksController < ApplicationController
    
        def top
        end
        
        def index
            @lists = Book.all
            @list = Book.new
        end
    
        def show
            @lists = Book.find(params[:id])
        end
        
        def create
            @lists = Book.new(book_params)
            if @lists.save
                flash[:notice] = "Book was successfully created."
                redirect_to"/books/#{@lists.id}"
            else
                flash[:alrat] = "2 errors prohibited this book from being saved:"
                redirect_to"/books"
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
                flash[:alrat] = "1 errors prohibited this book from being saved:"
                render "edit"
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
