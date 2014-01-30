class RegistersController < ApplicationController
  before_action :set_register, only: [:show, :edit, :update, :destroy]

  # GET /registers
  # GET /registers.json
  def index
    @registers = Register.all
  end

  # GET /registers/1
  # GET /registers/1.json

  
  # GET /registers/new
  def new
    @register = Register.new
  end

  # GET /registers/1/edit
  def edit
  end
   
  # POST /registers
  # POST /registers.json
  def create
    @register = Register.new(register_params)
    
    # @register.birth_certificate = File.open('somewhere')
    # @register.save!
    # @register.birth_certificate.url # => '/url/to/file.png'
    # @register.birth_certificate.current_path # => 'path/to/file.png'
    # @register.birth_certificate.identifier # => 'file.png'
    
    respond_to do |format|
      if @register.save
        format.html { redirect_to @register, notice: 'Register was successfully created.' }
        format.json { render action: 'show', status: :created, location: @register }
      else
        format.html { render action: 'new' }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end

    end

  # PATCH/PUT /registers/1
  # PATCH/PUT /registers/1.json
  def update
    respond_to do |format|
      if @register.update(register_params)
        format.html { redirect_to @register, notice: 'Register was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registers/1
  # DELETE /registers/1.json
  def destroy
    @register.destroy
    respond_to do |format|
      format.html { redirect_to registers_url }
      format.json { head :no_content }
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register
      @register = Register.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_params
      params.require(:register).permit(:name_of_student, :date_of_birth, :birth_certificate, :gender, :father_or_guardian_name, :mother_name, :nationality, :religion, :caste, :community_category, :student_category, :sibling_or_existing_parent, :child_with_special_needs, :locality, :residential_address, :pincode, :landmark, :mobile_number, :landline_number, :email_address, :father_or_guardian_qualification, :mother_qualification, :father_occupation_or_designation, :father_annual_income, :father_organisation_name, :father_organisation_address, :mother_occupation_or_designation, :mother_annual_income, :mother_organisation_name, :mother_organisation_address)
    end
end
