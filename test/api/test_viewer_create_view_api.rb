#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2023 Aspose Pty Ltd
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

  class TestViewerCreateViewApi < TestContext
    
    include MiniTest::Assertions

    def test_CreateViewReturnsMissingFileInfo
      viewOptions = ViewOptions.new
      request = CreateViewRequest.new(viewOptions)      

      error = assert_raises ApiError do
        @view_api.create_view(request)
      end

      assert_equal "Parameter 'FileInfo' is not specified.", error.message            
    end

    def test_CreateViewReturnsFileNotFound
      file = TestFile.not_exist;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      request = CreateViewRequest.new(viewOptions)    

      error = assert_raises ApiError do
        @view_api.create_view(request)
      end

      assert_equal "Can't find file located at 'some-folder\\notexist.docx'.", error.message            
    end    

    def test_CreateViewWithMinimalViewOptions
      file = TestFile.password_protected_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 4, response.pages.size
      assert_equal 0, response.attachments.size

      # Download result
      dlRequest = DownloadFileRequest.new response.pages[0].path
      response = @file_api.download_file(dlRequest)
      assert_operator response.length, :>, 0       
    end
    
    def test_CreateViewWithDefaultViewFormat
      file = TestFile.one_page_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 1, response.pages.size
      assert_equal 0, response.attachments.size      
      assert_equal 1, response.pages[0].number
    end

    def test_CreateViewWithHtmlViewFormat
      file = TestFile.one_page_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      viewOptions.view_format = "HTML"
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 1, response.pages.size      
      assert_equal 1, response.pages[0].number      
    end

    def test_CreateViewWithImageViewFormat
      file = TestFile.one_page_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      viewOptions.view_format = "JPG"
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 1, response.pages.size      
      assert_equal 1, response.pages[0].number      
    end

    def test_CreateViewWithRenderHiddenPages
      file = TestFile.two_hidden_pages_vsd;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      renderOptions = RenderOptions.new
      renderOptions.render_hidden_pages = true
      viewOptions.render_options = renderOptions
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 3, response.pages.size           
    end

    def test_CreateViewWithSpreadsheetPaginateSheetsOption
      file = TestFile.with_hidden_rows_and_columns;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      spreadsheetOptions = SpreadsheetOptions.new
      spreadsheetOptions.paginate_sheets = true
      spreadsheetOptions.count_rows_per_page = 5
      renderOptions = RenderOptions.new
      renderOptions.spreadsheet_options = spreadsheetOptions
      viewOptions.render_options = renderOptions
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 3, response.pages.size           
    end

    def test_CreateViewWithSpreadsheetRenderHiddenRowsOption
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
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 3, response.pages.size           
    end    

    def test_CreateViewWithCadOptions
      file = TestFile.three_layouts_dwf;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      cadOptions = CadOptions.new
      cadOptions.width = 800
      renderOptions = RenderOptions.new
      renderOptions.cad_options = cadOptions
      viewOptions.render_options = renderOptions
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 3, response.pages.size           
    end

    def test_CreateViewWithProjectOptions
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
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_operator response.pages.size, :>, 0             
    end

    def test_CreateViewWithFontsPathOption
      file = TestFile.uses_custom_font_pptx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      viewOptions.view_format = "JPG"
      viewOptions.fonts_path = "font/ttf"
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 1, response.pages.size
    end

    def test_CreateViewWithStartPageAndCountPages
      file = TestFile.four_pages_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info   
      renderOptions = RenderOptions.new
      renderOptions.start_page_number = 2
      renderOptions.count_pages_to_render = 2
      viewOptions.render_options = renderOptions
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 2, response.pages.size    
      assert_equal 2, response.pages[0].number       
    end    
  
    def test_CreateViewWithHtmlOptions
      file = TestFile.one_page_docx;
      viewOptions = ViewOptions.new
      viewOptions.file_info = file.file_info
      renderOptions = HtmlOptions.new
      renderOptions.external_resources = true
      viewOptions.render_options = renderOptions      
      request = CreateViewRequest.new(viewOptions)      

      response = @view_api.create_view(request)

      assert_equal 1, response.pages.size
      assert_equal 0, response.attachments.size      
      assert_equal 1, response.pages[0].number
      assert_operator response.pages[0].resources.length, :>, 0  
    end    
  end
end
