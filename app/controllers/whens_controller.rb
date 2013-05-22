class WhensController < ApplicationController
  # GET /whens
  # GET /whens.json
  def index
    @whens = When.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @whens }
    end
  end

  # GET /whens/1
  # GET /whens/1.json
  def show
    @when = When.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @when }
    end
  end

  # GET /whens/new
  # GET /whens/new.json
  def new
    @when = When.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @when }
    end
  end

  # GET /whens/1/edit
  def edit
    @when = When.find(params[:id])
  end

  # POST /whens
  # POST /whens.json
  def create
    @when = When.new(params[:when])

    respond_to do |format|
      if @when.save
        format.html { redirect_to @when, notice: 'When was successfully created.' }
        format.json { render json: @when, status: :created, location: @when }
      else
        format.html { render action: "new" }
        format.json { render json: @when.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /whens/1
  # PUT /whens/1.json
  def update
    @when = When.find(params[:id])

    respond_to do |format|
      if @when.update_attributes(params[:when])
        format.html { redirect_to @when, notice: 'When was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @when.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whens/1
  # DELETE /whens/1.json
  def destroy
    @when = When.find(params[:id])
    @when.destroy

    respond_to do |format|
      format.html { redirect_to whens_url }
      format.json { head :no_content }
    end
  end
end
