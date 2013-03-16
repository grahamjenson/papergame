class AwardsController < ApplicationController

  before_filter :authenticate_user!
  
  # GET /awards
  # GET /awards.json
  def index
    @awards = Award.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @awards }
    end
  end

  # GET /awards/1
  # GET /awards/1.json
  def show
    @award = Award.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @award }
    end
  end

  # GET /awards/new
  # GET /awards/new.json
  def new
    @award = Award.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @award }
    end
  end

  # GET /awards/1/edit
  def edit
    @award = Award.find(params[:id])
  end

  # POST /awards
  # POST /awards.json
  def create
    # @award = Award.new(params[:transaction_id])
    # @award = Award.new(user_id: params[:user_id], title: params[:title])
    @award = Award.create_from_webhook_params(params)
    # @award.save # already saved in the model
    render nothing: true, status: 200
  end

  # PUT /awards/1
  # PUT /awards/1.json
  def update
    @award = Award.find(params[:id])

    respond_to do |format|
      if @award.update_attributes(params[:award])
        format.html { redirect_to @award, notice: 'Award was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awards/1
  # DELETE /awards/1.json
  def destroy
    @award = Award.find(params[:id])
    @award.destroy

    respond_to do |format|
      format.html { redirect_to awards_url }
      format.json { head :no_content }
    end
  end

end
