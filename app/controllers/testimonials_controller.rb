class TestimonialsController < ApplicationController
  before_action :set_testimonial, only: %i[ show edit update destroy ]

  # GET /testimonials or /testimonials.json
  def index
    @testimonials = Testimonial.all
  end

  # GET /testimonials/1 or /testimonials/1.json
  def show
  end

  # GET /testimonials/new
  def new
    @testimonial = Testimonial.new
  end

  # GET /testimonials/1/edit
  def edit
  end

  # POST /testimonials or /testimonials.json
  def create
    @testimonial = Testimonial.new(testimonial_params)

    respond_to do |format|
      if @testimonial.save
        format.html { redirect_to @testimonial, notice: "Testimonial was successfully created." }
        format.json { render :show, status: :created, location: @testimonial }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testimonials/1 or /testimonials/1.json
  def update
    respond_to do |format|
      if @testimonial.update(testimonial_params)
        format.html { redirect_to @testimonial, notice: "Testimonial was successfully updated." }
        format.json { render :show, status: :ok, location: @testimonial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonials/1 or /testimonials/1.json
  def destroy
    @testimonial.destroy
    respond_to do |format|
      format.html { redirect_to testimonials_url, notice: "Testimonial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testimonial_params
      params.require(:testimonial).permit(:name, :member_since, :title, :message)
    end
end
