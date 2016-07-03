require 'rubygems'
require 'zip'

class ZipApp < ZipApp::Base
  def self.helloworld
zipfile_name = "#{Rails.root}/tmp/sample.zip"

Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
  pdfs.each_with_index do |pdf, i|
    # Two arguments:
    # - The name of the file as it will appear in the archive
    # - The original file, including the path to find it
    zipfile.add("#{sprintf("%04d", i + 1)}.pdf", pdf)
  end
end
File.unlink(*pdfs)

send_file(zipfile_name)
  end
end
