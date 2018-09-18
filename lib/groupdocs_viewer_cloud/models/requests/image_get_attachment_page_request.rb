 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="image_get_attachment_page_request.rb">
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
  # Request model for image_get_attachment_page operation.
  #
  class ImageGetAttachmentPageRequest

        # The file name.
        attr_accessor :file_name
        # Name of the attachment.
        attr_accessor :attachment_name
        # The attachment page number.
        attr_accessor :page_number
        # The image format (jpg, png or bmp). Default value is png.
        attr_accessor :format
        # The image width.
        attr_accessor :width
        # The image height.
        attr_accessor :height
        # The image quality for jpg format. Default value is 90.
        attr_accessor :quality
        # The document password.
        attr_accessor :password
        # The attachment password.
        attr_accessor :attachment_password
        # When this options is set to true text contained in document will be extracted and returned along with other information.
        attr_accessor :extract_text
        # Allows to render document comments.
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
        # @param file_name The file name.
        # @param attachment_name Name of the attachment.
        # @param page_number The attachment page number.
        # @param format The image format (jpg, png or bmp). Default value is png.
        # @param width The image width.
        # @param height The image height.
        # @param quality The image quality for jpg format. Default value is 90.
        # @param password The document password.
        # @param attachment_password The attachment password.
        # @param extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
        # @param render_comments Allows to render document comments.
        # @param render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
        # @param default_font_name The name of the default font.
        # @param fonts_folder The folder with custom fonts in storage.
        # @param folder The folder which contains specified file in storage.
        # @param storage The file storage which have to be used.
        def initialize(file_name, attachment_name, page_number, format = nil, width = nil, height = nil, quality = nil, password = nil, attachment_password = nil, extract_text = nil, render_comments = nil, render_hidden_pages = nil, default_font_name = nil, fonts_folder = nil, folder = nil, storage = nil)
           self.file_name = file_name
           self.attachment_name = attachment_name
           self.page_number = page_number
           self.format = format
           self.width = width
           self.height = height
           self.quality = quality
           self.password = password
           self.attachment_password = attachment_password
           self.extract_text = extract_text
           self.render_comments = render_comments
           self.render_hidden_pages = render_hidden_pages
           self.default_font_name = default_font_name
           self.fonts_folder = fonts_folder
           self.folder = folder
           self.storage = storage
        end
  end
end
