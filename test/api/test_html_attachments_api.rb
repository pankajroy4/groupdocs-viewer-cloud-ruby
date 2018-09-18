#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_html_attachments_api.rb">
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

  class TestHtmlAttachmentsApi < TestContext
    
    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # unit tests for html_get_attachment
    # Downloads attachment.
    # 
    # @param file_name The file name.
    # @param attachment_name Name of the attachment.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_html_get_attachment_from_msg
      file = TestFile.with_attachment_msg
      
      request = HtmlGetAttachmentRequest.new(file.file_name, file.attachment_name)
      request.folder = file.folder

      response = @viewer_api.html_get_attachment request

      assert response != nil
    end

    # unit tests for html_get_attachment
    # Downloads attachment.
    # 
    # @param file_name The file name.
    # @param attachment_name Name of the attachment.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_html_get_attachment_from_pdf
      file = TestFile.with_attachment_pdf
      
      request = HtmlGetAttachmentRequest.new(file.file_name, file.attachment_name)
      request.folder = file.folder

      response = @viewer_api.html_get_attachment request

      assert response != nil
    end

    # unit tests for html_get_attachments
    # Retrieves list of document attachments.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [AttachmentCollection]
    def test_html_get_attachments_from_msg
      file = TestFile.with_attachment_msg
      
      request = HtmlGetAttachmentsRequest.new(file.file_name)
      request.folder = file.folder

      response = @viewer_api.html_get_attachments request

      assert_equal 1, response.attachments.size
      assert_equal "password-protected.docx", response.attachments[0].name
    end

    # unit tests for html_get_attachments
    # Retrieves list of document attachments.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [AttachmentCollection]
    def test_html_get_attachments_from_pdf
      file = TestFile.with_attachment_pdf
      
      request = HtmlGetAttachmentsRequest.new(file.file_name)
      request.folder = file.folder

      response = @viewer_api.html_get_attachments request

      assert_equal 1, response.attachments.size
      assert_equal "password-protected.docx", response.attachments[0].name
    end

  end
end
