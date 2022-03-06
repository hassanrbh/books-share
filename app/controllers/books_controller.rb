class BooksController < ApplicationController
    def index
        @books = Book.all
        render :index
    end

    def show
        @book = Book.find_by(:id => params[:id])
        if @book
            render :show
        else
            redirect_to books_path
        end
    end

    def new
        @book = Book.new
        render :new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to book_url(@book)
        else
            render :json => @book.errors.full_messages, status: :unprocessable_entity
        end
    end

    def edit
        @book = Book.find_by(:id => params[:id])
        render :edit
    end

    def update
        @book = Book.find_by(:id => params[:id])
        if @book.update(book_params)
            redirect_to book_url(@book)
        else
            render :edit
        end
    end
    protected

    def book_params
        params.require(:books).permit(:author, :category, :year, :owner, :description)
    end
end