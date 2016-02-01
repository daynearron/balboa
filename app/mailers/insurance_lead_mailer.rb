class InsuranceLeadMailer < ActionMailer::Base
  default :from => "Commerge Home Mortgage <noreply@commercehomemortgage.com>"
  default :subject => "Balboa Insurance Lead Form Submitted"

  def send_email(insurance_lead)
    @insurance_lead = insurance_lead
    attachments["current_auto_policy#{File.extname(insurance_lead.current_auto_insurance_policy_file_name)}"] = Paperclip.io_adapters.for(insurance_lead.current_auto_insurance_policy).read
    attachments["current_home_policy#{File.extname(insurance_lead.current_home_insurance_policy_file_name)}"] = Paperclip.io_adapters.for(insurance_lead.current_home_insurance_policy).read

    if Rails.env.production?
      mail(to: "joe@balboapacific.com", bcc: "richard.j.young@gmail.com")
    else
      mail(to: "richard.j.young@gmail.com")
    end
  end

end