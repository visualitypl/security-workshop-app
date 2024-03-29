class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:index, :add_to_my_books]
  before_action :set_book, only: [:show, :details, :edit, :update, :destroy, :add_to_my_books]

  # GET /books
  # GET /books.json
  def index
    @books = current_user.books.where("name LIKE '%#{params[:search]}%'")
  end

  def list
    @books = Book.where("published IS TRUE AND name LIKE '%#{params[:search]}%'")
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  def details
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  def add_to_my_books
    current_user.books << @book
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)
    @book.users << current_user
    @book.creator = current_user

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    current_user.books.destroy(@book)
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def book_params
    params.require(:book).permit(:name, :description)
  end
end
