 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="html_create_pdf_file_from_content_request.rb">
 #   Copyright (c) 2003-2018 Aspose Pty Ltd
 # </copyright>
 # <summary>
 #  Permission is hereby granted, free of charge, to any person obtaining a copy
 #  of this software and associated documentation files (the "Software"), to deal
 #  in the Software without restriction, including without limitation the rights
 #  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 #  copies of the Software, and to permit persons to whom the Software is
 #  furnished to do so, subject to the following conditions:
 # 
 #  The above copyright notice and this permission notice shall be included in all
 #  copies or substantial portions of the Software.
 # 
 #  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 #  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 #  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 #  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 #  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 #  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 #  SOFTWARE.
 # </summary>
 # --------------------------------------------------------------------------------------------------------------------
 #

module GroupDocsViewerCloud

  #
  # Request model for html_create_pdf_file_from_content operation.
  #
  class HtmlCreatePdfFileFromContentRequest

        # File contents.
        attr_accessor :file
        # PDF rendering options 'PdfFileOptions' as JSON or XML.
        attr_accessor :pdf_file_options
        # The file name.
        attr_accessor :file_name
        # The folder with custom fonts in storage.
        attr_accessor :fonts_folder
        # The folder which contains specified file in storage.
        attr_accessor :folder
        # The file storage which have to be used.
        attr_accessor :storage
	
        #
        # Initializes a new instance.
        # @param file File contents.
        # @param pdf_file_options PDF rendering options 'PdfFileOptions' as JSON or XML.
        # @param file_name The file name.
        # @param fonts_folder The folder with custom fonts in storage.
        # @param folder The folder which contains specified file in storage.
        # @param storage The file storage which have to be used.
        def initialize(file, pdf_file_options, file_name = nil, fonts_folder = nil, folder = nil, storage = nil)
           self.file = file
           self.pdf_file_options = pdf_file_options
           self.file_name = file_name
           self.fonts_folder = fonts_folder
           self.folder = folder
           self.storage = storage
        end
  end
end
