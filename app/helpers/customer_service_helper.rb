module CustomerServiceHelper
  def tel_to(number, name = nil, html_options = nil)
    link_to(h(name || number), "tel:#{h(number)}", html_options) if number.present?
  end
end
