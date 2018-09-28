class WebhookController < ApplicationController
  # GET /datatables
  # GET /datatables.json
  def index
    #@datatables = Datatable.all
  end

  # GET /datatables/1
  # GET /datatables/1.json
  def show
  end

  # GET /datatables/new
  def new
    #@datatable = Datatable.new
  end

  # GET /datatables/1/edit
  def post
    p params
  end

  # POST /datatables
  # POST /datatables.json
  def create
    @datatable = Datatable.new(datatable_params)

    respond_to do |format|
      if @datatable.save
        format.html { redirect_to @datatable, notice: 'Datatable was successfully created.' }
        format.json { render :show, status: :created, location: @datatable }
      else
        format.html { render :new }
        format.json { render json: @datatable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datatables/1
  # PATCH/PUT /datatables/1.json
  def update
    respond_to do |format|
      if @datatable.update(datatable_params)
        format.html { redirect_to @datatable, notice: 'Datatable was successfully updated.' }
        format.json { render :show, status: :ok, location: @datatable }
      else
        format.html { render :edit }
        format.json { render json: @datatable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datatables/1
  # DELETE /datatables/1.json
  def destroy
    @datatable.destroy
    respond_to do |format|
      format.html { redirect_to datatables_url, notice: 'Datatable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
