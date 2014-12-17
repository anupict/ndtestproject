PDFKit.configure do |config|
	
  config.default_options = { page_size: 'A4', print_media_type: true }
  if RUBY_PLATFORM =~ /mswin32/
  	config.wkhtmltopdf = 'C:/pdf/wkhtmltopdf.exe'
  elsif RUBY_PLATFORM =~ /linux/
    wkhtmltopdf_executable = 'wkhtmltopdf-amd64'
    config.wkhtmltopdf = Rails.root.join('vendor', 'bin', wkhtmltopdf_executable).to_s
  elsif RUBY_PLATFORM =~ /darwin/
    wkhtmltopdf_executable = 'wkhtmltopdf-osx'
    config.wkhtmltopdf = Rails.root.join('vendor', 'bin', wkhtmltopdf_executable).to_s
  else
    config.wkhtmltopdf = 'C:/pdf/wkhtmltopdf.exe'
  end	

end