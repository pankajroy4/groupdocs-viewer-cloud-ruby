#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_html_document_info_api.rb">
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

  class TestHtmlDocumentInfoApi < TestContext
    
    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # unit tests for html_get_document_info
    # Retrieves document information.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info
      file = TestFile.four_pages_docx

      request = HtmlGetDocumentInfoRequest.new(file.file_name)
      request.folder = file.folder

      response = @viewer_api.html_get_document_info request

      assert_equal 4, response.pages.size
      assert_equal ".docx", response.extension
      assert_equal "four-pages.docx", response.file_name
    end

    # unit tests for html_get_document_info
    # Retrieves document information.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_with_render_hidden_pages
      file = TestFile.two_hidden_pages_vsd

      request = HtmlGetDocumentInfoRequest.new(file.file_name)
      request.folder = file.folder
      request.render_hidden_pages = true

      response = @viewer_api.html_get_document_info request

      assert_equal 3, response.pages.size
      assert_equal ".vsd", response.extension
      assert_equal "two-hidden-pages.vsd", response.file_name
    end

    # unit tests for html_get_document_info
    # Retrieves document information.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_file_not_found

      request = HtmlGetDocumentInfoRequest.new("file-not-found.docx")

      error = assert_raises ApiError do
        @viewer_api.html_get_document_info request
      end

      assert_equal "Can't find file with given name 'file-not-found.docx' and folder ''.", error.message
    end
    
    # unit tests for html_get_document_info
    # Retrieves document information.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_password_not_provided
      file = TestFile.password_protected_docx

      request = HtmlGetDocumentInfoRequest.new(file.file_name)
      request.folder = file.folder

      error = assert_raises ApiError do
        @viewer_api.html_get_document_info request
      end

      assert_equal "The password was not provided. The specified file 'password-protected.docx' is password-protected.", error.message
    end

    # unit tests for html_get_document_info 
    # Retrieves document information.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_invalid_password
      file = TestFile.password_protected_docx

      request = HtmlGetDocumentInfoRequest.new(file.file_name)
      request.folder = file.folder
      request.password = "not-a-password"

      error = assert_raises ApiError do
        @viewer_api.html_get_document_info request
      end

      assert_equal "Password provided for file with name 'password-protected.docx' is incorrect.", error.message
    end

    # unit tests for html_get_document_info 
    # Retrieves document information.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_corrupted_file
      file = TestFile.corrupted_pdf

      request = HtmlGetDocumentInfoRequest.new(file.file_name)
      request.folder = file.folder

      error = assert_raises ApiError do
        @viewer_api.html_get_document_info request
      end

      assert_equal "Failed to read specified file 'corrupted.pdf'. File can be corrupted or damaged.", error.message
    end

    # unit tests for html_get_document_info_from_url
    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param url The URL to retrieve document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The file name.
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_from_url
      file = TestFile.from_url_one_page_docx

      request = HtmlGetDocumentInfoFromUrlRequest.new(file.url)
      request.file_name = file.file_name
      request.folder = "tests\\from_url"

      response = @viewer_api.html_get_document_info_from_url request

      assert_equal 1, response.pages.size
      assert_equal ".docx", response.extension
      assert_equal "one-page.docx", response.file_name
    end

    # unit tests for html_get_document_info_from_url
    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param url The URL to retrieve document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The file name.
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments. Not required if PDF document was created before.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_from_url_invalid_url
      request = HtmlGetDocumentInfoFromUrlRequest.new("invalid-url")

      error = assert_raises ApiError do
        @viewer_api.html_get_document_info_from_url request
      end

      assert_equal "Can't parse specified URL 'invalid-url'.", error.message
    end

    # unit tests for html_get_document_info_with_options
    # Retrieves document information with specified DocumentInfoOptions. Expects DocumentInfoOptions object data in request body.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [DocumentInfoOptions] :document_info_options The rendering options.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_with_options
      file = TestFile.password_protected_docx

      document_info_options = DocumentInfoOptions.new
      document_info_options.password = file.password

      request = HtmlGetDocumentInfoWithOptionsRequest.new(file.file_name)
      request.file_name = file.file_name
      request.folder = file.folder
      request.document_info_options = document_info_options

      response = @viewer_api.html_get_document_info_with_options request

      assert_equal 1, response.pages.size
      assert_equal ".docx", response.extension
      assert_equal "password-protected.docx", response.file_name
    end

    # unit tests for html_get_document_info_from_content
    # Retrieves document information for posted document. Content with document or multipart content is expected where first part is document and second is DocumentInfoOptions. Saves file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param file File contents.
    # @param document_info_options Document info options &#39;DocumentInfoOptions&#39; as JSON or XML.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The file name.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_from_content
      file = TestFile.password_protected_docx

      document_info_options = DocumentInfoOptions.new
      document_info_options.password = file.password
         
      file_content = get_test_file file
      options_json = document_info_options.to_hash.to_json

      request = HtmlGetDocumentInfoFromContentRequest.new(file_content, options_json)
      request.file_name = file.file_name
      request.folder = "tests\\from_content"

      response = @viewer_api.html_get_document_info_from_content request

      assert_equal 1, response.pages.size
      assert_equal ".docx", response.extension
      assert_equal "password-protected.docx", response.file_name
    end

    # unit tests for html_get_document_info_from_url_with_options
    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param url The URL to retrieve document.
    # @param [Hash] opts the optional parameters
    # @option opts [DocumentInfoOptions] :document_info_options The rendering options.
    # @option opts [String] :file_name The document name.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_html_get_document_info_from_url_with_options
      file = TestFile.from_url_with_notes_pptx

      document_info_options = DocumentInfoOptions.new
      document_info_options.slides_options = SlidesOptions.new
      document_info_options.slides_options.render_notes = true 

      request = HtmlGetDocumentInfoFromUrlWithOptionsRequest.new(file.url)
      request.file_name = file.file_name
      request.document_info_options = document_info_options
      request.folder = "tests\\from_url"

      response = @viewer_api.html_get_document_info_from_url_with_options request

      assert_equal 1, response.pages.size
      assert_equal ".pptx", response.extension
      assert_equal "with-notes.pptx", response.file_name
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
