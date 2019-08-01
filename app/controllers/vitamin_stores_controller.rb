class VitaminStoresController < ApplicationController
  before_action :set_vitamin_store, only: [:show, :edit, :update, :destroy,:report]

  # GET /vitamin_stores
  # GET /vitamin_stores.json
  def index
    @vitamin_stores = VitaminStore.all
  end

  # GET /vitamin_stores/1
  # GET /vitamin_stores/1.json
  def show
  end

  # GET /vitamin_stores/new
  def new
    @vitamin_store = VitaminStore.new
  end

  # GET /vitamin_stores/1/edit
  def edit
  end

  # POST /vitamin_stores
  # POST /vitamin_stores.json
  def create
    @vitamin_store = VitaminStore.new(vitamin_store_params)

    respond_to do |format|
      if @vitamin_store.save
        format.html { redirect_to @vitamin_store, notice: 'Vitamin store was successfully created.' }
        format.json { render :show, status: :created, location: @vitamin_store }
      else
        format.html { render :new }
        format.json { render json: @vitamin_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vitamin_stores/1
  # PATCH/PUT /vitamin_stores/1.json
  def update
    respond_to do |format|
      if @vitamin_store.update(vitamin_store_params)
        format.html { redirect_to @vitamin_store, notice: 'Vitamin store was successfully updated.' }
        format.json { render :show, status: :ok, location: @vitamin_store }
      else
        format.html { render :edit }
        format.json { render json: @vitamin_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitamin_stores/1
  # DELETE /vitamin_stores/1.json
  def destroy
    @vitamin_store.destroy
    respond_to do |format|
      format.html { redirect_to vitamin_stores_url, notice: 'Vitamin store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def report
    #byebug
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vitamin_store
      @vitamin_store = VitaminStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vitamin_store_params
      params.require(:vitamin_store).permit(:day, :vita_c, :vita_d3, :vita_iron, :acti_vita_c, :acti_vita_d3, :acti_vita_iron)
    end
end
