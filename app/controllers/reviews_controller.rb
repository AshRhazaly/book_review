class ReviewsController < ApplicationController
  before_action :set_review, only: [:new, :create, :show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = @book.reviews.build
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = @book.reviews.create(review_params)
    @review.save
    redirect_to book_path(@book)
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    book = Book.find(params[:book_id])
    @review = book.reviews.find(params[:id])
    @review.destroy
    redirect_to book_path(book)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @book = Book.find(params[:book_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:name, :content)
    end
end
