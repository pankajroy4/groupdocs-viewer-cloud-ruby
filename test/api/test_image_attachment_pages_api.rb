#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_image_attachment_pages_api.rb">
#    Copyright (c) 2003-2018 Aspose Pty Ltd
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
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

  require 'groupdocs_storage_cloud'

  require_relative './../test_context'
  require_relative './../test_settings'
  require_relative './../test_file'

  class TestImageAttachmentPagesApi < TestContext
    
    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # unit tests for image_get_attachment_page
    # Downloads attachment page as image.
    # 
    # @param file_name The file name.
    # @param attachment_name Name of the attachment.
    # @param page_number The attachment page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The image format (jpg, png or bmp). Default value is png.
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [Integer] :quality The image quality for jpg format. Default value is 90.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_image_get_attachment_page
      file = TestFile.with_attachment_msg

      request = ImageGetAttachmentPageRequest.new(file.file_name, file.attachment_name, 1)
      request.attachment_password = file.attachment_password
      request.folder = file.folder

      response = @viewer_api.image_get_attachment_page request

      assert response != nil
    end

    # unit tests for image_get_attachment_pages
    # Retrieves attachment pages as images.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The image format (jpg, png or bmp). Default value is png.
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [Integer] :quality The image quality for jpg format. Default value is 90.
    # @option opts [Integer] :start_page_number The starting document page number to render.
    # @option opts [Integer] :count_pages The count of document pages to render.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [ImageAttachmentPageCollection]
    def test_image_get_attachment_pages
      file = TestFile.with_attachment_msg

      request = ImageGetAttachmentPagesRequest.new(file.file_name, file.attachment_name)
      request.attachment_password = file.attachment_password
      request.folder = file.folder

      response = @viewer_api.image_get_attachment_pages request

      assert_equal 1, response.pages.size
      assert_equal "with-attachment.msg", response.file_name
      assert_equal "password-protected.docx", response.attachment_name
      assert_equal "email\\msg", response.folder
    end

    # unit tests for image_get_zip_with_attachment_pages
    # Retrieves attachment pages as images.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The image format (jpg, png or bmp). Default value is png.
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [Integer] :quality The image quality for jpg format. Default value is 90.
    # @option opts [Integer] :start_page_number The starting document page number to render.
    # @option opts [Integer] :count_pages The count of document pages to render.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_image_get_zip_with_attachment_pages
      file = TestFile.with_attachment_msg

      request = ImageGetZipWithAttachmentPagesRequest.new(file.file_name, file.attachment_name)
      request.attachment_password = file.attachment_password
      request.folder = file.folder

      response = @viewer_api.image_get_zip_with_attachment_pages request

      assert response != nil
    end

    # unit tests for image_create_attachment_pages_cache
    # Creates attachment cache.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [ImageOptions] :image_options The image rendering options.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [ImageAttachmentPageCollection]
    def test_image_create_attachment_pages_cache
      file = TestFile.with_attachment_pdf

      image_options = ImageOptions.new
      image_options.attachment_password = file.attachment_password

      request = ImageCreateAttachmentPagesCacheRequest.new(file.file_name, file.attachment_name)
      request.image_options = image_options
      request.folder = file.folder

      response = @viewer_api.image_create_attachment_pages_cache request

      assert_equal 1, response.pages.size
      assert_equal "with-attachment.pdf", response.file_name
      assert_equal "password-protected.docx", response.attachment_name
      assert_equal "pdf\\pdf", response.folder
    end
    
    # unit tests for image_delete_attachment_pages_cache
    # Removes attachment cache.
    # 
    # @param file_name The file name.
    # @param attachment_name Name of the attachment.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [nil]
    def test_image_delete_attachment_pages_cache
      file = TestFile.with_attachment_pdf

      request = ImageDeleteAttachmentPagesCacheRequest.new(file.file_name, file.attachment_name)
      request.folder = file.folder

      @viewer_api.image_delete_attachment_pages_cache request
    end

  end
end
