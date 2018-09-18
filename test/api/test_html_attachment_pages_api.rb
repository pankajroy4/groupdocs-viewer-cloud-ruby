#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_html_attachment_pages_api.rb">
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

  class TestHtmlAttachmentPagesApi < TestContext
    
    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # unit tests for html_get_attachment_page
    # Downloads attachment page as HTML.
    # 
    # @param file_name The document name.
    # @param attachment_name Name of the attachment.
    # @param page_number The attachment page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :resource_path The attachment page HTML resource path.
    # @option opts [BOOLEAN] :ignore_resource_path_in_resources When this option enabled ResourcePath won&#39;t be added to resource reference in *.css and *.svg files.
    # @option opts [BOOLEAN] :embed_resources Whether to embed HTML resources or save them separate.
    # @option opts [BOOLEAN] :enable_minification Enables content (HTML, CSS and SVG) minification.
    # @option opts [BOOLEAN] :enable_responsive_rendering Indicates whether rendering will provide responsive web pages, that look well on different device types.
    # @option opts [BOOLEAN] :exclude_fonts Prevents adding fonts to the output HTML document.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_html_get_attachment_page
      file = TestFile.with_attachment_msg

      request = HtmlGetAttachmentPageRequest.new(file.file_name, file.attachment_name, 1)
      request.attachment_password = file.attachment_password
      request.folder = file.folder

      response = @viewer_api.html_get_attachment_page request

      assert response != nil
    end

    # unit tests for html_get_attachment_pages
    # Retrieves attachment pages as HTML.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :resource_path The attachment page HTML resource path.
    # @option opts [BOOLEAN] :ignore_resource_path_in_resources When this option enabled ResourcePath won&#39;t be added to resource reference in *.css and *.svg files.
    # @option opts [BOOLEAN] :embed_resources Whether to embed HTML resources or save them separate.
    # @option opts [BOOLEAN] :enable_minification Enables content (HTML, CSS and SVG) minification.
    # @option opts [BOOLEAN] :enable_responsive_rendering Indicates whether rendering will provide responsive web pages, that look well on different device types.
    # @option opts [BOOLEAN] :exclude_fonts Prevents adding fonts to the output HTML document.
    # @option opts [Integer] :start_page_number The starting document page number to render.
    # @option opts [Integer] :count_pages The count of document pages to render.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [HtmlAttachmentPageCollection]
    def test_html_get_attachment_pages
      file = TestFile.with_attachment_msg

      request = HtmlGetAttachmentPagesRequest.new(file.file_name, file.attachment_name)
      request.attachment_password = file.attachment_password
      request.folder = file.folder

      response = @viewer_api.html_get_attachment_pages request

      assert_equal 1, response.pages.size
      assert_equal "with-attachment.msg", response.file_name
      assert_equal "password-protected.docx", response.attachment_name
      assert_equal "email\\msg", response.folder
    end

    # unit tests for html_get_zip_with_attachment_pages
    # Retrieves attachment pages as HTML.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :resource_path The attachment page HTML resource path.
    # @option opts [BOOLEAN] :ignore_resource_path_in_resources When this option enabled ResourcePath won&#39;t be added to resource reference in *.css and *.svg files.
    # @option opts [BOOLEAN] :embed_resources Whether to embed HTML resources or save them separate.
    # @option opts [BOOLEAN] :enable_minification Enables content (HTML, CSS and SVG) minification.
    # @option opts [BOOLEAN] :enable_responsive_rendering Indicates whether rendering will provide responsive web pages, that look well on different device types.
    # @option opts [BOOLEAN] :exclude_fonts Prevents adding fonts to the output HTML document.
    # @option opts [Integer] :start_page_number The starting document page number to render.
    # @option opts [Integer] :count_pages The count of document pages to render.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_html_get_zip_with_attachment_pages
      file = TestFile.with_attachment_msg

      request = HtmlGetZipWithAttachmentPagesRequest.new(file.file_name, file.attachment_name)
      request.attachment_password = file.attachment_password
      request.resource_path = "./r{page-number}/{resource-name}"
      request.folder = file.folder

      response = @viewer_api.html_get_zip_with_attachment_pages request

      assert response != nil
    end

    # unit tests for html_create_attachment_pages_cache
    # Creates attachment cache. 
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [HtmlOptions] :html_options The HTML rendering options.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [HtmlAttachmentPageCollection]
    def test_html_create_attachment_pages_cache
      file = TestFile.with_attachment_pdf

      html_options = HtmlOptions.new
      html_options.attachment_password = file.attachment_password

      request = HtmlCreateAttachmentPagesCacheRequest.new(file.file_name, file.attachment_name)
      request.html_options = html_options
      request.folder = file.folder

      response = @viewer_api.html_create_attachment_pages_cache request

      assert_equal 1, response.pages.size
      assert_equal "with-attachment.pdf", response.file_name
      assert_equal "password-protected.docx", response.attachment_name
      assert_equal "pdf\\pdf", response.folder
    end
    
    # unit tests for html_delete_attachment_pages_cache
    # Removes attachment cache.
    # 
    # @param file_name The file name.
    # @param attachment_name Name of the attachment.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [nil]
    def test_html_delete_attachment_pages_cache
      file = TestFile.with_attachment_pdf

      request = HtmlDeleteAttachmentPagesCacheRequest.new(file.file_name, file.attachment_name)
      request.folder = file.folder

      @viewer_api.html_delete_attachment_pages_cache request
    end

  end
end
