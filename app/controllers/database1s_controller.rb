class Database1sController < ApplicationController
  before_action :set_database1, only: %i[ show edit update destroy ]

  # GET /database1s or /database1s.json
  def index
    @database1s = Database1.all
  end

  # GET /database1s/1 or /database1s/1.json
  def show
    @database1 = Database1.find(params[:id])
  end

  # GET /database1s/new
  def new
    @database1 = Database1.new
  end

  # GET /database1s/1/edit
  def edit

    @database1 = Database1.find(params[:id])
  end

  # POST /database1s or /database1s.json
  def create
    @database1 = Database1.new(database1_params)

    respond_to do |format|
      if @database1.save
        format.html { redirect_to database1_url(@database1), notice: "Database1 was successfully created." }
        format.json { render :show, status: :created, location: @database1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @database1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /database1s/1 or /database1s/1.json
  def update
    respond_to do |format|
      if @database1.update(database1_params)
        format.html { redirect_to database1_url(@database1), notice: "Database1 was successfully updated." }
        format.json { render :show, status: :ok, location: @database1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @database1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /database1s/1 or /database1s/1.json
  def destroy
    @database1.destroy

    respond_to do |format|
      format.html { redirect_to database1s_url, notice: "Database1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_database1
 
      @database1 = Database1.find(params[:id])
    end

   

    # Only allow a list of trusted parameters through.
    def database1_params
      params.require(:database1).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
