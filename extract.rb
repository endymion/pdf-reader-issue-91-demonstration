require 'pdf-reader'

reader = PDF::Reader.new("Call Summary Report Hourly.pdf")

puts "PDF VERSION: " + reader.pdf_version.to_s
puts "INFO: " + reader.info.inspect
puts "METADATA: " + reader.metadata.to_s
puts "PAGE COUNT: " + reader.page_count.to_s

reader.pages.each do |page|
  puts "PAGE: " + page.inspect
  puts "TEXT: " + page.text
end