#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_html_document_page_resource_api.rb">
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

  class TestHtmlDocumentPageResourceApi < TestContext
    
    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # unit tests for html_get_page_resource
    # Downloads HTML page resource (image, style, graphics or font).
    # 
    # @param file_name The file name.
    # @param page_number The page number.
    # @param resource_name Name of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_html_get_page_resource
      file = TestFile.one_page_docx;

      pages = get_pages file
      first_page = pages[0] 
    
      first_page.resources.each do |resource|
        request = HtmlGetPageResourceRequest.new(
          file.file_name,
          first_page.number,
          resource.name,
          file.folder
        )

        response = @viewer_api.html_get_page_resource request

        assert response != nil
      end
    end

    def get_pages(file)
      request = HtmlGetPagesRequest.new(file.file_name)
      request.folder = file.folder
      request.embed_resources = false
      request.start_page_number = 1
      request.count_pages = 1
      
      response = @viewer_api.html_get_pages request

      response.pages
    end

  end
end
