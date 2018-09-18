#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_image_document_pages_api.rb">
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

  class TestImageDocumentPagesApi < TestContext
    
    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # unit tests for image_get_page
    # Downloads document page as image.
    # 
    # @param file_name The file name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The image format (jpg, png or bmp). Default value is png.
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [Integer] :quality The image quality in JPG format. Valid values are between 1 and 100. Default value is 90.
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_image_get_page
      file = TestFile.one_page_docx

      request = ImageGetPageRequest.new(file.file_name, 1)
      request.folder = file.folder

      response = @viewer_api.image_get_page request

      assert response != nil
    end

   # unit tests for image_get_page
    # Downloads document page as image.
    # 
    # @param file_name The file name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The image format (jpg, png or bmp). Default value is png.
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [Integer] :quality The image quality in JPG format. Valid values are between 1 and 100. Default value is 90.
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_image_get_page_with_extract_text
      file = TestFile.one_page_docx

      request = ImageGetPageRequest.new(file.file_name, 1)
      request.folder = file.folder
      request.extract_text = true

      response = @viewer_api.image_get_page request

      assert response != nil
    end

   # unit tests for image_get_page
    # Downloads document page as image.
    # 
    # @param file_name The file name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The image format (jpg, png or bmp). Default value is png.
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [Integer] :quality The image quality in JPG format. Valid values are between 1 and 100. Default value is 90.
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_image_get_page_with_custom_font
      file = TestFile.uses_custom_font_pptx

      request = ImageGetPageRequest.new(file.file_name, 1)
      request.folder = file.folder
      request.fonts_folder = "fonts"

      response = @viewer_api.image_get_page request

      assert response != nil
    end

    # unit tests for image_get_pages
    # Retrieves list of document pages as image.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The image format (jpg, png or bmp). Default value is png.
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [Integer] :quality The image quality for jpg format. Default value is 90.
    # @option opts [Integer] :start_page_number The starting document page number to render.
    # @option opts [Integer] :count_pages The count of document pages to render.
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [ImagePageCollection]
    def test_image_get_pages
      file = TestFile.four_pages_docx

      request = ImageGetPagesRequest.new(file.file_name)
      request.folder = file.folder

      response = @viewer_api.image_get_pages request

      assert_equal 4, response.pages.size
      assert_equal "four-pages.docx", response.file_name
      assert_equal "words\\docx", response.folder
    end

    # unit tests for image_get_pages_from_url
    # Retrieves list of document pages as image.
    # 
    # @param url The URL to retrieve document.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The file name.
    # @option opts [String] :format The image format (jpg, png or bmp). Default value is png.
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [Integer] :quality The image quality for jpg format. Default value is 90.
    # @option opts [Integer] :start_page_number The starting document page number to render.
    # @option opts [Integer] :count_pages The count of document pages to render.
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [ImagePageCollection]
    def test_image_get_pages_from_url
      file = TestFile.from_url_with_notes_pptx

      request = ImageGetPagesFromUrlRequest.new(file.url)
      request.folder = "tests\\from_url"

      response = @viewer_api.image_get_pages_from_url request

      assert_equal 1, response.pages.size
      assert_equal "with-notes.pptx", response.file_name
    end

    # unit tests for image_get_zip_with_pages
    # Retrieves list of document pages as image.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The image format (jpg, png or bmp). Default value is png.
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [Integer] :quality The image quality for jpg format. Default value is 90.
    # @option opts [Integer] :start_page_number The starting document page number to render.
    # @option opts [Integer] :count_pages The count of document pages to render.
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
    # @option opts [BOOLEAN] :render_comments Allows to render document comments.
    # @option opts [BOOLEAN] :render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
    # @option opts [String] :default_font_name The name of the default font.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [File]
    def test_image_get_zip_with_pages
      file = TestFile.four_pages_docx

      request = ImageGetZipWithPagesRequest.new(file.file_name)
      request.folder = file.folder

      response = @viewer_api.image_get_zip_with_pages request

      assert response != nil
    end

    # unit tests for image_create_pages_cache
    # Creates document pages as image and saves them in cache.  Pages created before will be removed from cache.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [ImageOptions] :image_options The image render options.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [ImagePageCollection]
    def test_image_create_pages_cache
      file = TestFile.four_pages_docx

      image_options = ImageOptions.new
      image_options.format = "jpg"

      request = ImageCreatePagesCacheRequest.new(file.file_name)
      request.image_options = image_options
      request.folder = file.folder

      response = @viewer_api.image_create_pages_cache request

      assert_equal 4, response.pages.size
      assert_equal "four-pages.docx", response.file_name
      assert_equal "words\\docx", response.folder
    end

    # unit tests for image_create_pages_cache_from_content
    # Creates posted document pages as image and saves them in cache. Content with document or multipart content is expected where first part is document and second is ImageOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param file File contents.
    # @param image_options Image rendering options &#39;ImageOptions&#39; as JSON or XML.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The file name.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [ImagePageCollection]
    def test_image_create_pages_cache_from_content
      file = TestFile.password_protected_docx

      image_options = ImageOptions.new
      image_options.password = file.password

      file_content = get_test_file file
      options_json = image_options.to_hash.to_json

      request = ImageCreatePagesCacheFromContentRequest.new(file_content, options_json)
      request.folder = "tests\\from_content"

      response = @viewer_api.image_create_pages_cache_from_content request

      assert response.file_name.end_with?(".docx")
      assert_equal 1, response.pages.size
    end
    
    # unit tests for image_transform_pages
    # Rotates or reorders document page(s).
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [TransformOptionsBase] :transform_options The transformation options.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [PageInfoCollection]
    def test_image_rotate_pages
      file = TestFile.four_pages_docx

      transform_options = RotateOptions.new
      transform_options.page_number = 1
      transform_options.angle = 90

      request = ImageTransformPagesRequest.new(file.file_name)
      request.transform_options = transform_options
      request.folder = file.folder

      response = @viewer_api.image_transform_pages request

      assert_equal 90, response.pages[0].angle
    end

    # unit tests for image_transform_pages
    # Rotates or reorders document page(s).
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [TransformOptionsBase] :transform_options The transformation options.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [PageInfoCollection]
    def test_image_reorder_pages
      file = TestFile.four_pages_docx

      transform_options = ReorderOptions.new
      transform_options.page_number = 1
      transform_options.new_position = 2

      request = ImageTransformPagesRequest.new(file.file_name)
      request.transform_options = transform_options
      request.folder = file.folder

      response = @viewer_api.image_transform_pages request

      assert_equal 1, response.pages[1].number
      assert_equal 2, response.pages[0].number
    end

    # unit tests for image_create_pages_cache_from_url
    # Creates pages as image and saves them in cache for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param url The URL to retrieve document.
    # @param [Hash] opts the optional parameters
    # @option opts [ImageOptions] :image_options The image rendering options.
    # @option opts [String] :file_name The file name.
    # @option opts [String] :fonts_folder The folder with custom fonts in storage.
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [ImagePageCollection]
    def test_image_create_pages_cache_from_url
      file = TestFile.from_url_with_notes_pptx

      image_options = ImageOptions.new
      image_options.format = "jpg"

      request = ImageCreatePagesCacheFromUrlRequest.new(file.url)
      request.image_options = image_options
      request.file_name =  file.file_name
      request.folder = "tests\\from_url"

      response = @viewer_api.image_create_pages_cache_from_url request

      assert_equal 1, response.pages.size
      assert_equal "with-notes.pptx", response.file_name
    end

    # unit tests for image_delete_pages_cache
    # Removes document cache.
    # 
    # @param file_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The folder which contains specified file in storage.
    # @option opts [String] :storage The file storage which have to be used.
    # @return [nil]
    def test_image_delete_pages_cache
      file = TestFile.four_pages_docx

      request = ImageDeletePagesCacheRequest.new(file.file_name)
      request.folder = file.folder

      @viewer_api.image_delete_pages_cache request
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