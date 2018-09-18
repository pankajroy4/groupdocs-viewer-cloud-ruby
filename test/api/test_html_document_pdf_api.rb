#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_html_document_pdf_api.rb">
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

  class TestHtmlDocumentPdfApi < TestContext
    
    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # unit tests for html_get_pdf_file
    # Downloads document as PDF.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :password The document password. Not required if PDF document was created before.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_html_get_pdf_file
      file = TestFile.four_pages_docx

      request = HtmlGetPdfFileRequest.new(file.file_name)
      request.folder = file.folder

      response = @viewer_api.html_get_pdf_file request

      assert response != nil
    end

    # unit tests for html_get_pdf_file_from_url
    # Downloads document at provided URL as PDF.  Document will be retrieved from the passed URL and added to Storage.
    # 
    # @param url The URL to retrieve document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The file name.
    # @option opts [String] :password The document password. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_html_get_pdf_file_from_url
      file = TestFile.from_url_one_page_docx

      request = HtmlGetPdfFileFromUrlRequest.new(file.url)
      request.folder = file.folder

      response = @viewer_api.html_get_pdf_file_from_url request

      assert response != nil
    end

    # unit tests for html_create_pdf_file
    # Creates PDF document.  Removes PDF document if it was created before.
    # 
    # @param file_name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [PdfFileOptions] :pdf_file_options The PDF file rendering options.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [PdfFileInfo]
    def test_html_create_pdf_file
      file = TestFile.password_protected_docx

      pdf_file_options = PdfFileOptions.new
      pdf_file_options.password = file.password

      request = HtmlCreatePdfFileRequest.new(file.file_name)
      request.folder = file.folder
      request.pdf_file_options = pdf_file_options

      response = @viewer_api.html_create_pdf_file request

      assert_equal false, response.file_name.empty?
      assert_equal false, response.folder.empty?
      assert_equal false, response.pdf_file_name.empty?
    end

    # unit tests for html_create_pdf_file_from_content
    # Creates PDF document from document passed in request body and saves it in cache. Content with document or multipart content is expected where first part is document and second is PdfFileOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param file File contents.
    # @param pdf_file_options PDF rendering options &#39;PdfFileOptions&#39; as JSON or XML.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The file name.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [PdfFileInfo]
    def test_html_create_pdf_file_from_content
      file = TestFile.password_protected_docx

      pdf_file_options = PdfFileOptions.new
      pdf_file_options.password = file.password

      file_content = get_test_file file
      options_json = pdf_file_options.to_hash.to_json

      request = HtmlCreatePdfFileFromContentRequest.new(file_content, options_json)
      request.folder = "tests\\from_content"

      response = @viewer_api.html_create_pdf_file_from_content request

      assert_equal false, response.file_name.empty?
      assert_equal false, response.folder.empty?
      assert_equal false, response.pdf_file_name.empty?
    end

    # unit tests for html_create_pdf_file_from_url
    # Creates PDF document for document at provided URL and saves it in cache.  Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file. Expects PdfFileOptions object data in request body.
    # 
    # @param url The URL to retrieve document.
    # @param [Hash] opts the optional parameters
    # @option opts [PdfFileOptions] :pdf_file_options The PDF file rendering.
    # @option opts [String] :file_name The file name.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [PdfFileInfo]
    def test_html_create_pdf_file_from_url
      file = TestFile.from_url_with_notes_pptx

      pdf_file_options = PdfFileOptions.new
      pdf_file_options.password = file.password

      request = HtmlCreatePdfFileFromUrlRequest.new(file.url)
      request.pdf_file_options = pdf_file_options
      request.folder = "tests\\from_url"

      response = @viewer_api.html_create_pdf_file_from_url request

      assert_equal false, response.file_name.empty?
      assert_equal false, response.folder.empty?
      assert_equal false, response.pdf_file_name.empty?
    end

    # Retrieves test file
    def get_test_file(file)
      if file == nil then 
        return 
      end

      super file
    end    

  end
end
