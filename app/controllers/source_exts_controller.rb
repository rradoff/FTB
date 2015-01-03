class SourceExtsController < ApplicationController
  before_action :set_source_ext, only: [:show, :edit, :update, :destroy]

  # GET /source_exts
  # GET /source_exts.json
  def index
    @source_exts = SourceExt.all
  end

  # GET /source_exts/1
  # GET /source_exts/1.json
  def show
  end

  # GET /source_exts/new
  def new
    @source_ext = SourceExt.new
  end

  # GET /source_exts/1/edit
  def edit
  end

  # POST /source_exts
  # POST /source_exts.json
  def create
    @source_ext = SourceExt.new(source_ext_params)

    respond_to do |format|
      if @source_ext.save
        format.html { redirect_to @source_ext, notice: 'Source ext was successfully created.' }
        format.json { render :show, status: :created, location: @source_ext }
      else
        format.html { render :new }
        format.json { render json: @source_ext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_exts/1
  # PATCH/PUT /source_exts/1.json
  def update
    respond_to do |format|
      if @source_ext.update(source_ext_params)
        format.html { redirect_to @source_ext, notice: 'Source ext was successfully updated.' }
        format.json { render :show, status: :ok, location: @source_ext }
      else
        format.html { render :edit }
        format.json { render json: @source_ext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_exts/1
  # DELETE /source_exts/1.json
  def destroy
    @source_ext.destroy
    respond_to do |format|
      format.html { redirect_to source_exts_url, notice: 'Source ext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_ext
      @source_ext = SourceExt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def source_ext_params
      params.require(:source_ext).permit(:source_ext, :source_ext_id_pk)
    end
end
