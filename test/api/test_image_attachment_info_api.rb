#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_image_attachment_info_api.rb">
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

  class TestImageAttachmentInfoApi < TestContext
    
    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # unit tests for image_get_attachment_info
    # Retrieves attachment information.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_image_get_attachment_info
      file = TestFile.with_attachment_msg

      request = ImageGetAttachmentInfoRequest.new(file.file_name, file.attachment_name)
      request.attachment_password = file.attachment_password
      request.folder = file.folder

      response = @viewer_api.image_get_attachment_info request

      assert_equal 1, response.pages.size
      assert_equal ".docx", response.extension
      assert_equal "password-protected.docx", response.file_name
    end

    # unit tests for image_get_attachment_info
    # Retrieves attachment information.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_image_get_attachment_info_attachment_not_found
      file = TestFile.with_attachment_msg;

      request = ImageGetAttachmentInfoRequest.new(file.file_name, "not-found.pdf")
      request.folder = file.folder

      error = assert_raises ApiError do
         @viewer_api.image_get_attachment_info request
      end

      assert_equal "Can't find attachment with given name 'not-found.pdf'.", error.message
    end

    # unit tests for image_get_attachment_info
    # Retrieves attachment information.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_image_get_attachment_info_password_not_provided
      file = TestFile.with_attachment_msg

      request = ImageGetAttachmentInfoRequest.new(file.file_name, file.attachment_name)
      request.folder = file.folder

      error = assert_raises ApiError do
         @viewer_api.image_get_attachment_info request
      end

      assert_equal "The password was not provided. The specified file 'password-protected.docx' is password-protected.", error.message
    end

    # unit tests for image_get_attachment_info
    # Retrieves attachment information.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [String] :password The document password.
    # @option opts [String] :attachment_password The attachment password.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_image_get_attachment_info_invalid_password
      file = TestFile.with_attachment_msg;

      request = ImageGetAttachmentInfoRequest.new(file.file_name, file.attachment_name)
      request.attachment_password = "not-a-password"
      request.folder = file.folder

      error = assert_raises ApiError do
        @viewer_api.image_get_attachment_info request
      end

      assert_equal "Password provided for file with name 'password-protected.docx' is incorrect.", error.message
    end

    # unit tests for image_get_attachment_info_with_options
    # Retrieves attachment information with specified DocumentInfoOptions. Expects DocumentInfoOptions object data in request body.
    # 
    # @param file_name The file name.
    # @param attachment_name The attachment name.
    # @param [Hash] opts the optional parameters
    # @option opts [DocumentInfoOptions] :document_info_options The rendering options.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [DocumentInfo]
    def test_image_get_attachment_info_with_options
      file = TestFile.with_attachment_msg;
      
      document_info_options = DocumentInfoOptions.new
      document_info_options.attachment_password = file.attachment_password 

      request = ImageGetAttachmentInfoWithOptionsRequest.new(file.file_name, file.attachment_name)
      request.document_info_options = document_info_options
      request.folder = file.folder

      response = @viewer_api.image_get_attachment_info_with_options request

      assert_equal 1, response.pages.size
      assert_equal ".docx", response.extension
      assert_equal "password-protected.docx", response.file_name
    end

  end
end
