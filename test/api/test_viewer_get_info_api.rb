#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2021 Aspose Pty Ltd
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

  require_relative './../test_context'
  require_relative './../test_settings'
  require_relative './../test_file'

  class TestViewerGetInfoApi < TestContext
    
    include MiniTest::Assertions

    def test_GetInfoReturnsMissingFileInfo
      viewOptions = ViewOptions.new
      request = GetInfoRequest.new(viewOptions)      

      error = assert_raises ApiError do
        @info_api.get_info(request)
      end

      assert_equal "Parameter 'FileInfo' is not specified.", error.message            
    end

    def test_GetInfoReturnsFileNotFound
      file = TestFile.not_exist;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      request = GetInfoRequest.new(viewOptions)    

      error = assert_raises ApiError do
        @info_api.get_info(request)
      end

      assert_equal "Can't find file located at 'some-folder\\notexist.docx'.", error.message            
    end    

    def test_GetInfoWithMinimalViewOptions
      file = TestFile.password_protected_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_equal 4, response.pages.size
      assert_equal 0, response.attachments.size
    end
    
    def test_GetInfoWithDefaultViewFormat
      file = TestFile.one_page_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_equal 1, response.pages.size
      assert_equal 0, response.attachments.size      
      assert_equal 1, response.pages[0].number
    end

    def test_GetInfoWithHtmlViewFormat
      file = TestFile.one_page_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      viewOptions.view_format = "HTML"
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_equal 1, response.pages.size      
      assert_equal 1, response.pages[0].number
    end

    def test_GetInfoWithImageViewFormat
      file = TestFile.one_page_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      viewOptions.view_format = "JPG"
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_equal 1, response.pages.size      
      assert_equal 1, response.pages[0].number
      assert_operator response.pages[0].width, :>, 0      
    end

    def test_GetInfoWithRenderHiddenPages
      file = TestFile.two_hidden_pages_vsd;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      renderOptions = RenderOptions.new
      renderOptions.render_hidden_pages = true
      viewOptions.render_options = renderOptions
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_equal 3, response.pages.size           
    end

    def test_GetInfoWithSpreadsheetPaginateSheetsOption
      file = TestFile.with_hidden_rows_and_columns;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      spreadsheetOptions = SpreadsheetOptions.new
      spreadsheetOptions.paginate_sheets = true
      spreadsheetOptions.count_rows_per_page = 5
      renderOptions = RenderOptions.new
      renderOptions.spreadsheet_options = spreadsheetOptions
      viewOptions.render_options = renderOptions
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_equal 3, response.pages.size           
    end

    def test_GetInfoWithSpreadsheetRenderHiddenRowsOption
      file = TestFile.with_hidden_rows_and_columns;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      spreadsheetOptions = SpreadsheetOptions.new
      spreadsheetOptions.paginate_sheets = true
      spreadsheetOptions.count_rows_per_page = 5
      spreadsheetOptions.render_hidden_rows = true
      renderOptions = RenderOptions.new
      renderOptions.spreadsheet_options = spreadsheetOptions
      viewOptions.render_options = renderOptions
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_equal 3, response.pages.size           
    end    

    def test_GetInfoWithCadOptions
      file = TestFile.three_layouts_dwf;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      cadOptions = CadOptions.new
      cadOptions.scale_factor = 5.0
      renderOptions = RenderOptions.new
      renderOptions.cad_options = cadOptions
      viewOptions.render_options = renderOptions
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_equal 3, response.pages.size           
    end

    def test_GetInfoWithProjectOptions
      file = TestFile.project_mpp;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      projectManagementOptions = ProjectManagementOptions.new
      projectManagementOptions.page_size = "A4"
      projectManagementOptions.time_unit = "Months"
      projectManagementOptions.start_date = "2008/07/01"
      projectManagementOptions.end_date = "2008/07/31"      
      renderOptions = RenderOptions.new
      renderOptions.project_management_options = projectManagementOptions
      viewOptions.render_options = renderOptions
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_operator response.pages.size, :>, 0         
    end
    
    def test_GetInfoWithImageOptions
      file = TestFile.one_page_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      viewOptions.view_format = "JPG"
      renderOptions = ImageOptions.new
      renderOptions.extract_text = true
      viewOptions.render_options = renderOptions        
      request = GetInfoRequest.new(viewOptions)      

      response = @info_api.get_info(request)

      assert_equal 1, response.pages.size
      assert_equal 0, response.attachments.size      
      assert_equal 1, response.pages[0].number
      assert_operator response.pages[0].lines.length, :>, 0  
    end

  end
end
