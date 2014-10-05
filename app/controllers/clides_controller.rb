class ClidesController < ApplicationController
  # GET /clides
  # GET /clides.json
  def index
    @clides = Clide.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clides }
    end
  end

  # GET /clides/1
  # GET /clides/1.json
  def show
    @clide = Clide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clide }
    end
  end

  # GET /clides/new
  # GET /clides/new.json
  def new
    @clide = Clide.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clide }
    end
  end

  # GET /clides/1/edit
  def edit
    @clide = Clide.find(params[:id])
  end

  # POST /clides
  # POST /clides.json
  def create
    @clide = Clide.new(params[:clide])

    respond_to do |format|
      if @clide.save
        format.html { redirect_to @clide, notice: 'Clide was successfully created.' }
        format.json { render json: @clide, status: :created, location: @clide }
      else
        format.html { render action: "new" }
        format.json { render json: @clide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clides/1
  # PUT /clides/1.json
  def update
    @clide = Clide.find(params[:id])

    respond_to do |format|
      if @clide.update_attributes(params[:clide])
        format.html { redirect_to @clide, notice: 'Clide was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clides/1
  # DELETE /clides/1.json
  def destroy
    @clide = Clide.find(params[:id])
    @clide.destroy

    respond_to do |format|
      format.html { redirect_to clides_url }
      format.json { head :no_content }
    end
  end
end
