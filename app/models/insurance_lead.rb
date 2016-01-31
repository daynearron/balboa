class InsuranceLead < ActiveRecord::Base
  HOMEOWNERS_QUOTE_TYPES = ["Homeowners", "Condo", "Renters"].freeze

  validates :first_name, :last_name, :phone, :email, :home_address, :city, :state, :zip_code, :country, presence: true

  has_attached_file :current_auto_insurance_policy
  do_not_validate_attachment_file_type :current_auto_insurance_policy

  has_attached_file :current_home_insurance_policy
  do_not_validate_attachment_file_type :current_home_insurance_policy

  after_create :notify_email

  before_validation do
    strip_whitespace
  end

  def pretty_date
    created_at.strftime("%m/%d/%Y")
  end

private

  def strip_whitespace
    self.first_name.strip!
    self.last_name.strip!
    self.email.strip!
  end

  # Send a notification email
  def notify_email
    begin
      InsuranceLeadMailer.send_email(self).deliver
    rescue => e
      Rails.logger.error("Unable to send insurnace lead notification. #{e.message}")
    end
  end
end