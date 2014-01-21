class SugarBagsController < ApplicationController
  # GET /sugar_bags
  # GET /sugar_bags.json
  def index
    @sugar_bags = SugarBag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sugar_bags }
    end
  end

  # GET /sugar_bags/1
  # GET /sugar_bags/1.json
  def show
    @sugar_bag = SugarBag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sugar_bag }
    end
  end

  # GET /sugar_bags/new
  # GET /sugar_bags/new.json
  def new
    @sugar_bag = SugarBag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sugar_bag }
    end
  end

  # GET /sugar_bags/1/edit
  def edit
    @sugar_bag = SugarBag.find(params[:id])
  end

  # POST /sugar_bags
  # POST /sugar_bags.json
  def create
    @sugar_bag = SugarBag.new(params[:sugar_bag])

    respond_to do |format|
      if @sugar_bag.save
        format.html { redirect_to @sugar_bag, notice: 'Sugar bag was successfully created.' }
        format.json { render json: @sugar_bag, status: :created, location: @sugar_bag }
      else
        format.html { render action: "new" }
        format.json { render json: @sugar_bag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sugar_bags/1
  # PUT /sugar_bags/1.json
  def update
    @sugar_bag = SugarBag.find(params[:id])

    respond_to do |format|
      if @sugar_bag.update_attributes(params[:sugar_bag])
        format.html { redirect_to @sugar_bag, notice: 'Sugar bag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sugar_bag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sugar_bags/1
  # DELETE /sugar_bags/1.json
  def destroy
    @sugar_bag = SugarBag.find(params[:id])
    @sugar_bag.destroy

    respond_to do |format|
      format.html { redirect_to sugar_bags_url }
      format.json { head :no_content }
    end
  end
end
