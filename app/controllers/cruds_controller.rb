class CrudsController < ApplicationController
  def index
    @crudds = Crudd.all    
  end

  def show
    @crudd = Crudd.find(params[:id])
  end

  def new
    @crudd = Crudd.new
  end

  def create
    @crudd = Crudd.new(crudd_priv)

    if @crudd.save
      redirect_to @crudd
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @crudd = Crudd.find(params[:id])
  end

  def update
    @crudd = Crudd.find(params[:id])

    if @crudd.update(crudd_priv)
      redirect_to @crudd
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  private
  def crudd_priv
  params.require(:crudd).permit(:name :body :number)
  end
end
