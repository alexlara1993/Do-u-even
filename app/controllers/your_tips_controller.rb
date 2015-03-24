class YourTipsController < ApplicationController
  before_action :set_your_tip, only: [:show, :edit, :update, :destroy]

  # GET /your_tips
  # GET /your_tips.json
  def index
    @your_tips = YourTip.all
  end

  # GET /your_tips/1
  # GET /your_tips/1.json
  def show
  end

  # GET /your_tips/new
  def new
    @your_tip = YourTip.new
  end

  # GET /your_tips/1/edit
  def edit
  end

  # POST /your_tips
  # POST /your_tips.json
  def create
    @your_tip = YourTip.new(your_tip_params)

    respond_to do |format|
      if @your_tip.save
        format.html { redirect_to @your_tip, notice: 'Your tip was successfully created.' }
        format.json { render :show, status: :created, location: @your_tip }
      else
        format.html { render :new }
        format.json { render json: @your_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /your_tips/1
  # PATCH/PUT /your_tips/1.json
  def update
    respond_to do |format|
      if @your_tip.update(your_tip_params)
        format.html { redirect_to @your_tip, notice: 'Your tip was successfully updated.' }
        format.json { render :show, status: :ok, location: @your_tip }
      else
        format.html { render :edit }
        format.json { render json: @your_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /your_tips/1
  # DELETE /your_tips/1.json
  def destroy
    @your_tip.destroy
    respond_to do |format|
      format.html { redirect_to your_tips_url, notice: 'Your tip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_your_tip
      @your_tip = YourTip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def your_tip_params
      params.require(:your_tip).permit(:tip, :description)
    end
end
