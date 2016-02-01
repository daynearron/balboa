class InsuranceLeads::CurrentHomeInsurancePoliciesController < ApplicationController
  def show
    insurance_lead = InsuranceLead.find(params[:id])
    send_data(insurance_lead.current_home_insurance_policy.file_contents(:original),
                      filename: insurance_lead.current_home_insurance_policy_file_name,
                      type: insurance_lead.current_home_insurance_policy_content_type, disposition: "inline")
  end
end