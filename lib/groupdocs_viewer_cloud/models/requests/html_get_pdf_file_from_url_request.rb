 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="html_get_pdf_file_from_url_request.rb">
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
  # Request model for html_get_pdf_file_from_url operation.
  #
  class HtmlGetPdfFileFromUrlRequest

        # The URL to retrieve document.
        attr_accessor :url
        # The file name.
        attr_accessor :file_name
        # The document password. Not required if PDF document was created before.
        attr_accessor :password
        # Allows to render document comments. Not required if PDF document was created before.
        attr_accessor :render_comments
        # Enables rendering of document hidden pages, sheets or slides.
        attr_accessor :render_hidden_pages
        # The name of the default font.
        attr_accessor :default_font_name
        # The folder with custom fonts in storage.
        attr_accessor :fonts_folder
        # The folder which contains specified file in storage.
        attr_accessor :folder
        # The file storage which have to be used.
        attr_accessor :storage
	
        #
        # Initializes a new instance.
        # @param url The URL to retrieve document.
        # @param file_name The file name.
        # @param password The document password. Not required if PDF document was created before.
        # @param render_comments Allows to render document comments. Not required if PDF document was created before.
        # @param render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
        # @param default_font_name The name of the default font.
        # @param fonts_folder The folder with custom fonts in storage.
        # @param folder The folder which contains specified file in storage.
        # @param storage The file storage which have to be used.
        def initialize(url, file_name = nil, password = nil, render_comments = nil, render_hidden_pages = nil, default_font_name = nil, fonts_folder = nil, folder = nil, storage = nil)
           self.url = url
           self.file_name = file_name
           self.password = password
           self.render_comments = render_comments
           self.render_hidden_pages = render_hidden_pages
           self.default_font_name = default_font_name
           self.fonts_folder = fonts_folder
           self.folder = folder
           self.storage = storage
        end
  end
end
