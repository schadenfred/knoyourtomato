class CommunitiesController < ApplicationController

  def index
    @communities = Community.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @communities }
    end
  end

  def show
    @community = Community.find(params[:id])
    @farms = @community.farms

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @community }
    end
  end

  def new
    @community = Community.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @community }
    end
  end

  def edit
    @community = Community.find(params[:id])
  end

  def create
    @community = Community.new(params[:community])

    respond_to do |format|
      if @community.save
        format.html { redirect_to @community, notice: 'Community was successfully created.' }
        format.json { render json: @community, status: :created, location: @community }
      else
        format.html { render action: "new" }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @community = Community.find(params[:id])

    respond_to do |format|
      if @community.update_attributes(params[:community])
        format.html { redirect_to @community, notice: 'Community was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @community = Community.find(params[:id])
    @community.destroy

    respond_to do |format|
      format.html { redirect_to communities_url }
      format.json { head :no_content }
    end
  end
end
