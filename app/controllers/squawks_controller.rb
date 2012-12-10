class SquawksController < ApplicationController
  # GET /squawks
  # GET /squawks.json
  def index
    @squawks = Squawk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @squawks }
    end
  end

  # GET /squawks/1
  # GET /squawks/1.json
  def show
    @squawk = Squawk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @squawk }
    end
  end

  # GET /squawks/new
  # GET /squawks/new.json
  def new
    @squawk = Squawk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @squawk }
    end
  end

  # GET /squawks/1/edit
  def edit
    @squawk = Squawk.find(params[:id])
  end

  # POST /squawks
  # POST /squawks.json
  def create
    @squawk = Squawk.new(params[:squawk])

    respond_to do |format|
      if @squawk.save
        format.html { redirect_to @squawk, notice: 'Squawk was successfully created.' }
        format.json { render json: @squawk, status: :created, location: @squawk }
      else
        format.html { render action: "new" }
        format.json { render json: @squawk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /squawks/1
  # PUT /squawks/1.json
  def update
    @squawk = Squawk.find(params[:id])

    respond_to do |format|
      if @squawk.update_attributes(params[:squawk])
        format.html { redirect_to @squawk, notice: 'Squawk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @squawk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squawks/1
  # DELETE /squawks/1.json
  def destroy
    @squawk = Squawk.find(params[:id])
    @squawk.destroy

    respond_to do |format|
      format.html { redirect_to squawks_url }
      format.json { head :no_content }
    end
  end
end
