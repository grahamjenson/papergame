class AwardTemplatesController < ApplicationController
  # GET /award_templates
  # GET /award_templates.json
  def index
    @award_templates = AwardTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @award_templates }
    end
  end

  # GET /award_templates/1
  # GET /award_templates/1.json
  def show
    @award_template = AwardTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @award_template }
    end
  end

  # GET /award_templates/new
  # GET /award_templates/new.json
  def new
    @award_template = AwardTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @award_template }
    end
  end

  # GET /award_templates/1/edit
  def edit
    @award_template = AwardTemplate.find(params[:id])
  end

  # POST /award_templates
  # POST /award_templates.json
  def create
    @award_template = AwardTemplate.new(params[:award_template])

    respond_to do |format|
      if @award_template.save
        format.html { redirect_to @award_template, notice: 'Award template was successfully created.' }
        format.json { render json: @award_template, status: :created, location: @award_template }
      else
        format.html { render action: "new" }
        format.json { render json: @award_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /award_templates/1
  # PUT /award_templates/1.json
  def update
    @award_template = AwardTemplate.find(params[:id])

    respond_to do |format|
      if @award_template.update_attributes(params[:award_template])
        format.html { redirect_to @award_template, notice: 'Award template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @award_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /award_templates/1
  # DELETE /award_templates/1.json
  def destroy
    @award_template = AwardTemplate.find(params[:id])
    @award_template.destroy

    respond_to do |format|
      format.html { redirect_to award_templates_url }
      format.json { head :no_content }
    end
  end
end
