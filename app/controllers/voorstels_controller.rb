class VoorstelsController < ApplicationController
  # GET /voorstels
  # GET /voorstels.json
  def index
    @voorstels = Voorstel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voorstels }
    end
  end

  # GET /voorstels/1
  # GET /voorstels/1.json
  def show
    @voorstel = Voorstel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @voorstel }
    end
  end

  # GET /voorstels/new
  # GET /voorstels/new.json
  def new
    @voorstel = Voorstel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @voorstel }
    end
  end

  # GET /voorstels/1/edit
  def edit
    @voorstel = Voorstel.find(params[:id])
  end

  # POST /voorstels
  # POST /voorstels.json
  def create
    @voorstel = Voorstel.new(params[:voorstel])

    respond_to do |format|
      if @voorstel.save
        format.html { redirect_to @voorstel, notice: 'Voorstel was successfully created.' }
        format.json { render json: @voorstel, status: :created, location: @voorstel }
      else
        format.html { render action: "new" }
        format.json { render json: @voorstel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voorstels/1
  # PUT /voorstels/1.json
  def update
    @voorstel = Voorstel.find(params[:id])

    respond_to do |format|
      if @voorstel.update_attributes(params[:voorstel])
        format.html { redirect_to @voorstel, notice: 'Voorstel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @voorstel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voorstels/1
  # DELETE /voorstels/1.json
  def destroy
    @voorstel = Voorstel.find(params[:id])
    @voorstel.destroy

    respond_to do |format|
      format.html { redirect_to voorstels_url }
      format.json { head :no_content }
    end
  end
end
