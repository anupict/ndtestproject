class InvoiceMailer < ActionMailer::Base
  default from: "from@example.com"

  # def registration_confirmation(user)
  #   @user = user
  #   attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
  #   mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  # end

  def email_pdf(invoice)
    @invoice = invoice
    @url = "ndtestproject.com"
    attachments["your-invoice.pdf"] = File.read("#{Rails.root}/tmp/pdfs/your-invoice.pdf")
    # mail(to: @invoice.customer.email, subject: "Please find the attachment of your invoice.")
    mail(to: "anupict@gmail.com", subject: "Please find the attachment of your invoice.")
  end
end
