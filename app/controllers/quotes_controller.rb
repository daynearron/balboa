class QuotesController < ApplicationController
  respond_to :html

  def index
    @insurance_lead_form = InsuranceLead.new
  end

  def create
    @insurance_lead_form = InsuranceLead.new(insurance_form_params)
    if @insurance_lead_form.save
      flash[:notice] = 'Thanks for submitting the form.'
    end
    respond_with(@insurance_lead_form, location: quotes_path, action: :index)
  end

  private

  def insurance_form_params
    params.require(:insurance_lead).permit(:first_name, :last_name, :phone, :email, :home_address, :home_address2, :city, :state, :zip_code, :country, :drivers_information, :current_auto_insurance_policy, :homeowners_quote_type, :own_dogs, :dog_1_breed, :dog_2_breed, :dog_3_breed, :home_security_system, :major_home_updates, :current_home_insurance_policy, :college_grad, :college_name, :college_degree, :work_positions, :interested_in_earthquake, :interested_in_flood, :interested_in_umbrella, :interested_in_life_insurance, :additional_details, :has_referral, :referral_first_name, :referral_last_name, :referral_email, :referral_phone)
  end
end