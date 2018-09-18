# -----------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="viewer.rb">
#   Copyright (c) 2003-2018 Aspose Pty Ltd
# </copyright>
# <summary>
#  Permission is hereby granted, free of charge, to any person obtaining a copy
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
# -----------------------------------------------------------------------------------

require 'uri'
require 'date'

module GroupDocsViewerCloud
  #
  # GroupDocs.Viewer Cloud API
  #
  class ViewerApi
    attr_accessor :config

    #make ViewerApi.new private 
    private_class_method :new

    # Initializes new instance of ViewerApi
    #
    # @param [config] Configuration 
    # @return [ViewerApi] New instance of ViewerApi
    def initialize(config)
      @config = config
      @api_client = ApiClient.new(config)
      require_all '../models/requests'

      @access_token = nil
    end

    # Initializes new instance of ViewerApi
    #
    # @param [app_sid] Application identifier (App SID)
    # @param [app_key] Application private key (App Key)
    # @return [ViewerApi] New instance of ViewerApi
    def self.from_keys(app_sid, app_key)
      config = Configuration.new(app_sid, app_key)
      return new(config)
    end

    # Initializes new instance of ViewerApi
    #
    # @param [config] Configuration 
    # @return [ViewerApi] New instance of ViewerApi
    def self.from_config(config)
      return new(config)
    end

    # Removes fonts cache.
    # 
    # @return [nil]
    def delete_fonts_cache()
      delete_fonts_cache_with_http_info()
      nil
    end

    # Removes fonts cache.
    # 
    
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def delete_fonts_cache_with_http_info()
      

      @api_client.config.logger.debug 'Calling API: ViewerApi.delete_fonts_cache ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/viewer/fonts/cache'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#delete_fonts_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # List installed fonts.
    # 
    # @return [FontCollection]
    def get_fonts()
      data, _status_code, _headers = get_fonts_with_http_info()
      data
    end

    # List installed fonts.
    # 
    
    # @return [Array<(FontCollection, Fixnum, Hash)>]
    # FontCollection data, response status code and response headers
    def get_fonts_with_http_info()
      

      @api_client.config.logger.debug 'Calling API: ViewerApi.get_fonts ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/viewer/fonts'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'FontCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#get_fonts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves list of supported file formats.
    # 
    # @return [FormatCollection]
    def get_supported_file_formats()
      data, _status_code, _headers = get_supported_file_formats_with_http_info()
      data
    end

    # Retrieves list of supported file formats.
    # 
    
    # @return [Array<(FormatCollection, Fixnum, Hash)>]
    # FormatCollection data, response status code and response headers
    def get_supported_file_formats_with_http_info()
      

      @api_client.config.logger.debug 'Calling API: ViewerApi.get_supported_file_formats ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/viewer/formats'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'FormatCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#get_supported_file_formats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates attachment cache. 
    # 
    # @param request html_create_attachment_pages_cache_request
    # @return [HtmlAttachmentPageCollection]
    def html_create_attachment_pages_cache(request)
      data, _status_code, _headers = html_create_attachment_pages_cache_with_http_info(request)
      data
    end

    # Creates attachment cache. 
    # 
    # @param request html_create_attachment_pages_cache_request
    # @return [Array<(HtmlAttachmentPageCollection, Fixnum, Hash)>]
    # HtmlAttachmentPageCollection data, response status code and response headers
    def html_create_attachment_pages_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlCreateAttachmentPagesCacheRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_create_attachment_pages_cache ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_create_attachment_pages_cache' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.html_create_attachment_pages_cache' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments/{attachmentName}/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.html_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'HtmlAttachmentPageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_create_attachment_pages_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates document pages as HTML and saves them in cache. Pages created before will be removed from cache.
    # 
    # @param request html_create_pages_cache_request
    # @return [HtmlPageCollection]
    def html_create_pages_cache(request)
      data, _status_code, _headers = html_create_pages_cache_with_http_info(request)
      data
    end

    # Creates document pages as HTML and saves them in cache. Pages created before will be removed from cache.
    # 
    # @param request html_create_pages_cache_request
    # @return [Array<(HtmlPageCollection, Fixnum, Hash)>]
    # HtmlPageCollection data, response status code and response headers
    def html_create_pages_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlCreatePagesCacheRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_create_pages_cache ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_create_pages_cache' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.html_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'HtmlPageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_create_pages_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates posted document pages as HTML and saves them in cache. Content with document or multipart content is expected where first part is document and second is HtmlOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_create_pages_cache_from_content_request
    # @return [HtmlPageCollection]
    def html_create_pages_cache_from_content(request)
      data, _status_code, _headers = html_create_pages_cache_from_content_with_http_info(request)
      data
    end

    # Creates posted document pages as HTML and saves them in cache. Content with document or multipart content is expected where first part is document and second is HtmlOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_create_pages_cache_from_content_request
    # @return [Array<(HtmlPageCollection, Fixnum, Hash)>]
    # HtmlPageCollection data, response status code and response headers
    def html_create_pages_cache_from_content_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlCreatePagesCacheFromContentRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_create_pages_cache_from_content ...' if @api_client.config.debugging
      # verify the required parameter 'file' is set
      raise ArgumentError, 'Missing the required parameter file when calling ViewerApi.html_create_pages_cache_from_content' if @api_client.config.client_side_validation && request.file.nil?
      # verify the required parameter 'html_options' is set
      raise ArgumentError, 'Missing the required parameter html_options when calling ViewerApi.html_create_pages_cache_from_content' if @api_client.config.client_side_validation && request.html_options.nil?
      # resource path
      local_var_path = '/viewer/html/pages'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('File')] = request.file
      form_params[downcase_first_letter('HtmlOptions')] = request.html_options

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'HtmlPageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_create_pages_cache_from_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates pages as HTML and saves them in cache for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_create_pages_cache_from_url_request
    # @return [HtmlPageCollection]
    def html_create_pages_cache_from_url(request)
      data, _status_code, _headers = html_create_pages_cache_from_url_with_http_info(request)
      data
    end

    # Creates pages as HTML and saves them in cache for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_create_pages_cache_from_url_request
    # @return [Array<(HtmlPageCollection, Fixnum, Hash)>]
    # HtmlPageCollection data, response status code and response headers
    def html_create_pages_cache_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlCreatePagesCacheFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_create_pages_cache_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.html_create_pages_cache_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/html/pages'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.html_options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'HtmlPageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_create_pages_cache_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates PDF document.  Removes PDF document if it was created before.
    # 
    # @param request html_create_pdf_file_request
    # @return [PdfFileInfo]
    def html_create_pdf_file(request)
      data, _status_code, _headers = html_create_pdf_file_with_http_info(request)
      data
    end

    # Creates PDF document.  Removes PDF document if it was created before.
    # 
    # @param request html_create_pdf_file_request
    # @return [Array<(PdfFileInfo, Fixnum, Hash)>]
    # PdfFileInfo data, response status code and response headers
    def html_create_pdf_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlCreatePdfFileRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_create_pdf_file ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_create_pdf_file' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/pdf'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.pdf_file_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'PdfFileInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_create_pdf_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates PDF document from document passed in request body and saves it in cache. Content with document or multipart content is expected where first part is document and second is PdfFileOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_create_pdf_file_from_content_request
    # @return [PdfFileInfo]
    def html_create_pdf_file_from_content(request)
      data, _status_code, _headers = html_create_pdf_file_from_content_with_http_info(request)
      data
    end

    # Creates PDF document from document passed in request body and saves it in cache. Content with document or multipart content is expected where first part is document and second is PdfFileOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_create_pdf_file_from_content_request
    # @return [Array<(PdfFileInfo, Fixnum, Hash)>]
    # PdfFileInfo data, response status code and response headers
    def html_create_pdf_file_from_content_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlCreatePdfFileFromContentRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_create_pdf_file_from_content ...' if @api_client.config.debugging
      # verify the required parameter 'file' is set
      raise ArgumentError, 'Missing the required parameter file when calling ViewerApi.html_create_pdf_file_from_content' if @api_client.config.client_side_validation && request.file.nil?
      # verify the required parameter 'pdf_file_options' is set
      raise ArgumentError, 'Missing the required parameter pdf_file_options when calling ViewerApi.html_create_pdf_file_from_content' if @api_client.config.client_side_validation && request.pdf_file_options.nil?
      # resource path
      local_var_path = '/viewer/html/pdf'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('File')] = request.file
      form_params[downcase_first_letter('PdfFileOptions')] = request.pdf_file_options

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'PdfFileInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_create_pdf_file_from_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates PDF document for document at provided URL and saves it in cache.  Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file. Expects PdfFileOptions object data in request body.
    # 
    # @param request html_create_pdf_file_from_url_request
    # @return [PdfFileInfo]
    def html_create_pdf_file_from_url(request)
      data, _status_code, _headers = html_create_pdf_file_from_url_with_http_info(request)
      data
    end

    # Creates PDF document for document at provided URL and saves it in cache.  Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file. Expects PdfFileOptions object data in request body.
    # 
    # @param request html_create_pdf_file_from_url_request
    # @return [Array<(PdfFileInfo, Fixnum, Hash)>]
    # PdfFileInfo data, response status code and response headers
    def html_create_pdf_file_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlCreatePdfFileFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_create_pdf_file_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.html_create_pdf_file_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/html/pdf'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.pdf_file_options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'PdfFileInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_create_pdf_file_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes attachment cache.
    # 
    # @param request html_delete_attachment_pages_cache_request
    # @return [nil]
    def html_delete_attachment_pages_cache(request)
      html_delete_attachment_pages_cache_with_http_info(request)
      nil
    end

    # Removes attachment cache.
    # 
    # @param request html_delete_attachment_pages_cache_request
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def html_delete_attachment_pages_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlDeleteAttachmentPagesCacheRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_delete_attachment_pages_cache ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_delete_attachment_pages_cache' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.html_delete_attachment_pages_cache' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments/{attachmentName}/pages/cache'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_delete_attachment_pages_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes document cache.
    # 
    # @param request html_delete_pages_cache_request
    # @return [nil]
    def html_delete_pages_cache(request)
      html_delete_pages_cache_with_http_info(request)
      nil
    end

    # Removes document cache.
    # 
    # @param request html_delete_pages_cache_request
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def html_delete_pages_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlDeletePagesCacheRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_delete_pages_cache ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_delete_pages_cache' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/pages/cache'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_delete_pages_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads attachment.
    # 
    # @param request html_get_attachment_request
    # @return [File]
    def html_get_attachment(request)
      data, _status_code, _headers = html_get_attachment_with_http_info(request)
      data
    end

    # Downloads attachment.
    # 
    # @param request html_get_attachment_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def html_get_attachment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetAttachmentRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_attachment ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_attachment' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.html_get_attachment' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments/{attachmentName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves attachment information.
    # 
    # @param request html_get_attachment_info_request
    # @return [DocumentInfo]
    def html_get_attachment_info(request)
      data, _status_code, _headers = html_get_attachment_info_with_http_info(request)
      data
    end

    # Retrieves attachment information.
    # 
    # @param request html_get_attachment_info_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def html_get_attachment_info_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetAttachmentInfoRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_attachment_info ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_attachment_info' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.html_get_attachment_info' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments/{attachmentName}/info'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('AttachmentPassword') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentPassword') + '}', request.attachment_password.to_s)
      else
        query_params[downcase_first_letter('AttachmentPassword')] = request.attachment_password unless request.attachment_password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_attachment_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves attachment information with specified DocumentInfoOptions. Expects DocumentInfoOptions object data in request body.
    # 
    # @param request html_get_attachment_info_with_options_request
    # @return [DocumentInfo]
    def html_get_attachment_info_with_options(request)
      data, _status_code, _headers = html_get_attachment_info_with_options_with_http_info(request)
      data
    end

    # Retrieves attachment information with specified DocumentInfoOptions. Expects DocumentInfoOptions object data in request body.
    # 
    # @param request html_get_attachment_info_with_options_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def html_get_attachment_info_with_options_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetAttachmentInfoWithOptionsRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_attachment_info_with_options ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_attachment_info_with_options' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.html_get_attachment_info_with_options' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments/{attachmentName}/info'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document_info_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_attachment_info_with_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads attachment page as HTML.
    # 
    # @param request html_get_attachment_page_request
    # @return [File]
    def html_get_attachment_page(request)
      data, _status_code, _headers = html_get_attachment_page_with_http_info(request)
      data
    end

    # Downloads attachment page as HTML.
    # 
    # @param request html_get_attachment_page_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def html_get_attachment_page_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetAttachmentPageRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_attachment_page ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_attachment_page' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.html_get_attachment_page' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # verify the required parameter 'page_number' is set
      raise ArgumentError, 'Missing the required parameter page_number when calling ViewerApi.html_get_attachment_page' if @api_client.config.client_side_validation && request.page_number.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments/{attachmentName}/pages/{pageNumber}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PageNumber') + '}', request.page_number.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('ResourcePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ResourcePath') + '}', request.resource_path.to_s)
      else
        query_params[downcase_first_letter('ResourcePath')] = request.resource_path unless request.resource_path.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}', request.ignore_resource_path_in_resources.to_s)
      else
        query_params[downcase_first_letter('IgnoreResourcePathInResources')] = request.ignore_resource_path_in_resources unless request.ignore_resource_path_in_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EmbedResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EmbedResources') + '}', request.embed_resources.to_s)
      else
        query_params[downcase_first_letter('EmbedResources')] = request.embed_resources unless request.embed_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableMinification') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableMinification') + '}', request.enable_minification.to_s)
      else
        query_params[downcase_first_letter('EnableMinification')] = request.enable_minification unless request.enable_minification.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableResponsiveRendering') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableResponsiveRendering') + '}', request.enable_responsive_rendering.to_s)
      else
        query_params[downcase_first_letter('EnableResponsiveRendering')] = request.enable_responsive_rendering unless request.enable_responsive_rendering.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExcludeFonts') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExcludeFonts') + '}', request.exclude_fonts.to_s)
      else
        query_params[downcase_first_letter('ExcludeFonts')] = request.exclude_fonts unless request.exclude_fonts.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('AttachmentPassword') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentPassword') + '}', request.attachment_password.to_s)
      else
        query_params[downcase_first_letter('AttachmentPassword')] = request.attachment_password unless request.attachment_password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_attachment_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads HTML page resource (image, style, graphics or font).
    # 
    # @param request html_get_attachment_page_resource_request
    # @return [File]
    def html_get_attachment_page_resource(request)
      data, _status_code, _headers = html_get_attachment_page_resource_with_http_info(request)
      data
    end

    # Downloads HTML page resource (image, style, graphics or font).
    # 
    # @param request html_get_attachment_page_resource_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def html_get_attachment_page_resource_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetAttachmentPageResourceRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_attachment_page_resource ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_attachment_page_resource' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.html_get_attachment_page_resource' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # verify the required parameter 'page_number' is set
      raise ArgumentError, 'Missing the required parameter page_number when calling ViewerApi.html_get_attachment_page_resource' if @api_client.config.client_side_validation && request.page_number.nil?
      # verify the required parameter 'resource_name' is set
      raise ArgumentError, 'Missing the required parameter resource_name when calling ViewerApi.html_get_attachment_page_resource' if @api_client.config.client_side_validation && request.resource_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments/{attachmentName}/pages/{pageNumber}/resources/{resourceName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PageNumber') + '}', request.page_number.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ResourceName') + '}', request.resource_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_attachment_page_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves attachment pages as HTML.
    # 
    # @param request html_get_attachment_pages_request
    # @return [HtmlAttachmentPageCollection]
    def html_get_attachment_pages(request)
      data, _status_code, _headers = html_get_attachment_pages_with_http_info(request)
      data
    end

    # Retrieves attachment pages as HTML.
    # 
    # @param request html_get_attachment_pages_request
    # @return [Array<(HtmlAttachmentPageCollection, Fixnum, Hash)>]
    # HtmlAttachmentPageCollection data, response status code and response headers
    def html_get_attachment_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetAttachmentPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_attachment_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_attachment_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.html_get_attachment_pages' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments/{attachmentName}/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('ResourcePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ResourcePath') + '}', request.resource_path.to_s)
      else
        query_params[downcase_first_letter('ResourcePath')] = request.resource_path unless request.resource_path.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}', request.ignore_resource_path_in_resources.to_s)
      else
        query_params[downcase_first_letter('IgnoreResourcePathInResources')] = request.ignore_resource_path_in_resources unless request.ignore_resource_path_in_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EmbedResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EmbedResources') + '}', request.embed_resources.to_s)
      else
        query_params[downcase_first_letter('EmbedResources')] = request.embed_resources unless request.embed_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableMinification') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableMinification') + '}', request.enable_minification.to_s)
      else
        query_params[downcase_first_letter('EnableMinification')] = request.enable_minification unless request.enable_minification.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableResponsiveRendering') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableResponsiveRendering') + '}', request.enable_responsive_rendering.to_s)
      else
        query_params[downcase_first_letter('EnableResponsiveRendering')] = request.enable_responsive_rendering unless request.enable_responsive_rendering.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExcludeFonts') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExcludeFonts') + '}', request.exclude_fonts.to_s)
      else
        query_params[downcase_first_letter('ExcludeFonts')] = request.exclude_fonts unless request.exclude_fonts.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('AttachmentPassword') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentPassword') + '}', request.attachment_password.to_s)
      else
        query_params[downcase_first_letter('AttachmentPassword')] = request.attachment_password unless request.attachment_password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'HtmlAttachmentPageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_attachment_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves list of document attachments.
    # 
    # @param request html_get_attachments_request
    # @return [AttachmentCollection]
    def html_get_attachments(request)
      data, _status_code, _headers = html_get_attachments_with_http_info(request)
      data
    end

    # Retrieves list of document attachments.
    # 
    # @param request html_get_attachments_request
    # @return [Array<(AttachmentCollection, Fixnum, Hash)>]
    # AttachmentCollection data, response status code and response headers
    def html_get_attachments_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetAttachmentsRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_attachments ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_attachments' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'AttachmentCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information.
    # 
    # @param request html_get_document_info_request
    # @return [DocumentInfo]
    def html_get_document_info(request)
      data, _status_code, _headers = html_get_document_info_with_http_info(request)
      data
    end

    # Retrieves document information.
    # 
    # @param request html_get_document_info_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def html_get_document_info_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetDocumentInfoRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_document_info ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_document_info' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/info'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_document_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information for posted document. Content with document or multipart content is expected where first part is document and second is DocumentInfoOptions. Saves file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_get_document_info_from_content_request
    # @return [DocumentInfo]
    def html_get_document_info_from_content(request)
      data, _status_code, _headers = html_get_document_info_from_content_with_http_info(request)
      data
    end

    # Retrieves document information for posted document. Content with document or multipart content is expected where first part is document and second is DocumentInfoOptions. Saves file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_get_document_info_from_content_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def html_get_document_info_from_content_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetDocumentInfoFromContentRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_document_info_from_content ...' if @api_client.config.debugging
      # verify the required parameter 'file' is set
      raise ArgumentError, 'Missing the required parameter file when calling ViewerApi.html_get_document_info_from_content' if @api_client.config.client_side_validation && request.file.nil?
      # verify the required parameter 'document_info_options' is set
      raise ArgumentError, 'Missing the required parameter document_info_options when calling ViewerApi.html_get_document_info_from_content' if @api_client.config.client_side_validation && request.document_info_options.nil?
      # resource path
      local_var_path = '/viewer/html/info'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('File')] = request.file
      form_params[downcase_first_letter('DocumentInfoOptions')] = request.document_info_options

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_document_info_from_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_get_document_info_from_url_request
    # @return [DocumentInfo]
    def html_get_document_info_from_url(request)
      data, _status_code, _headers = html_get_document_info_from_url_with_http_info(request)
      data
    end

    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_get_document_info_from_url_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def html_get_document_info_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetDocumentInfoFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_document_info_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.html_get_document_info_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/html/info'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_document_info_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_get_document_info_from_url_with_options_request
    # @return [DocumentInfo]
    def html_get_document_info_from_url_with_options(request)
      data, _status_code, _headers = html_get_document_info_from_url_with_options_with_http_info(request)
      data
    end

    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request html_get_document_info_from_url_with_options_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def html_get_document_info_from_url_with_options_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetDocumentInfoFromUrlWithOptionsRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_document_info_from_url_with_options ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.html_get_document_info_from_url_with_options' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/html/info'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document_info_options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_document_info_from_url_with_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information with specified DocumentInfoOptions. Expects DocumentInfoOptions object data in request body.
    # 
    # @param request html_get_document_info_with_options_request
    # @return [DocumentInfo]
    def html_get_document_info_with_options(request)
      data, _status_code, _headers = html_get_document_info_with_options_with_http_info(request)
      data
    end

    # Retrieves document information with specified DocumentInfoOptions. Expects DocumentInfoOptions object data in request body.
    # 
    # @param request html_get_document_info_with_options_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def html_get_document_info_with_options_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetDocumentInfoWithOptionsRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_document_info_with_options ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_document_info_with_options' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/info'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document_info_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_document_info_with_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads document page as HTML.
    # 
    # @param request html_get_page_request
    # @return [File]
    def html_get_page(request)
      data, _status_code, _headers = html_get_page_with_http_info(request)
      data
    end

    # Downloads document page as HTML.
    # 
    # @param request html_get_page_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def html_get_page_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetPageRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_page ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_page' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'page_number' is set
      raise ArgumentError, 'Missing the required parameter page_number when calling ViewerApi.html_get_page' if @api_client.config.client_side_validation && request.page_number.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/pages/{pageNumber}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PageNumber') + '}', request.page_number.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('ResourcePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ResourcePath') + '}', request.resource_path.to_s)
      else
        query_params[downcase_first_letter('ResourcePath')] = request.resource_path unless request.resource_path.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}', request.ignore_resource_path_in_resources.to_s)
      else
        query_params[downcase_first_letter('IgnoreResourcePathInResources')] = request.ignore_resource_path_in_resources unless request.ignore_resource_path_in_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EmbedResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EmbedResources') + '}', request.embed_resources.to_s)
      else
        query_params[downcase_first_letter('EmbedResources')] = request.embed_resources unless request.embed_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableMinification') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableMinification') + '}', request.enable_minification.to_s)
      else
        query_params[downcase_first_letter('EnableMinification')] = request.enable_minification unless request.enable_minification.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableResponsiveRendering') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableResponsiveRendering') + '}', request.enable_responsive_rendering.to_s)
      else
        query_params[downcase_first_letter('EnableResponsiveRendering')] = request.enable_responsive_rendering unless request.enable_responsive_rendering.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExcludeFonts') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExcludeFonts') + '}', request.exclude_fonts.to_s)
      else
        query_params[downcase_first_letter('ExcludeFonts')] = request.exclude_fonts unless request.exclude_fonts.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads HTML page resource (image, style, graphics or font).
    # 
    # @param request html_get_page_resource_request
    # @return [File]
    def html_get_page_resource(request)
      data, _status_code, _headers = html_get_page_resource_with_http_info(request)
      data
    end

    # Downloads HTML page resource (image, style, graphics or font).
    # 
    # @param request html_get_page_resource_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def html_get_page_resource_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetPageResourceRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_page_resource ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_page_resource' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'page_number' is set
      raise ArgumentError, 'Missing the required parameter page_number when calling ViewerApi.html_get_page_resource' if @api_client.config.client_side_validation && request.page_number.nil?
      # verify the required parameter 'resource_name' is set
      raise ArgumentError, 'Missing the required parameter resource_name when calling ViewerApi.html_get_page_resource' if @api_client.config.client_side_validation && request.resource_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/pages/{pageNumber}/resources/{resourceName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PageNumber') + '}', request.page_number.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ResourceName') + '}', request.resource_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_page_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves list of document pages as HTML.
    # 
    # @param request html_get_pages_request
    # @return [HtmlPageCollection]
    def html_get_pages(request)
      data, _status_code, _headers = html_get_pages_with_http_info(request)
      data
    end

    # Retrieves list of document pages as HTML.
    # 
    # @param request html_get_pages_request
    # @return [Array<(HtmlPageCollection, Fixnum, Hash)>]
    # HtmlPageCollection data, response status code and response headers
    def html_get_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('ResourcePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ResourcePath') + '}', request.resource_path.to_s)
      else
        query_params[downcase_first_letter('ResourcePath')] = request.resource_path unless request.resource_path.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}', request.ignore_resource_path_in_resources.to_s)
      else
        query_params[downcase_first_letter('IgnoreResourcePathInResources')] = request.ignore_resource_path_in_resources unless request.ignore_resource_path_in_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EmbedResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EmbedResources') + '}', request.embed_resources.to_s)
      else
        query_params[downcase_first_letter('EmbedResources')] = request.embed_resources unless request.embed_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableMinification') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableMinification') + '}', request.enable_minification.to_s)
      else
        query_params[downcase_first_letter('EnableMinification')] = request.enable_minification unless request.enable_minification.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableResponsiveRendering') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableResponsiveRendering') + '}', request.enable_responsive_rendering.to_s)
      else
        query_params[downcase_first_letter('EnableResponsiveRendering')] = request.enable_responsive_rendering unless request.enable_responsive_rendering.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExcludeFonts') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExcludeFonts') + '}', request.exclude_fonts.to_s)
      else
        query_params[downcase_first_letter('ExcludeFonts')] = request.exclude_fonts unless request.exclude_fonts.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'HtmlPageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves list of document pages as HTML.
    # 
    # @param request html_get_pages_from_url_request
    # @return [HtmlPageCollection]
    def html_get_pages_from_url(request)
      data, _status_code, _headers = html_get_pages_from_url_with_http_info(request)
      data
    end

    # Retrieves list of document pages as HTML.
    # 
    # @param request html_get_pages_from_url_request
    # @return [Array<(HtmlPageCollection, Fixnum, Hash)>]
    # HtmlPageCollection data, response status code and response headers
    def html_get_pages_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetPagesFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_pages_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.html_get_pages_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/html/pages'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ResourcePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ResourcePath') + '}', request.resource_path.to_s)
      else
        query_params[downcase_first_letter('ResourcePath')] = request.resource_path unless request.resource_path.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}', request.ignore_resource_path_in_resources.to_s)
      else
        query_params[downcase_first_letter('IgnoreResourcePathInResources')] = request.ignore_resource_path_in_resources unless request.ignore_resource_path_in_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EmbedResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EmbedResources') + '}', request.embed_resources.to_s)
      else
        query_params[downcase_first_letter('EmbedResources')] = request.embed_resources unless request.embed_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableMinification') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableMinification') + '}', request.enable_minification.to_s)
      else
        query_params[downcase_first_letter('EnableMinification')] = request.enable_minification unless request.enable_minification.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableResponsiveRendering') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableResponsiveRendering') + '}', request.enable_responsive_rendering.to_s)
      else
        query_params[downcase_first_letter('EnableResponsiveRendering')] = request.enable_responsive_rendering unless request.enable_responsive_rendering.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExcludeFonts') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExcludeFonts') + '}', request.exclude_fonts.to_s)
      else
        query_params[downcase_first_letter('ExcludeFonts')] = request.exclude_fonts unless request.exclude_fonts.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'HtmlPageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_pages_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads document as PDF.
    # 
    # @param request html_get_pdf_file_request
    # @return [File]
    def html_get_pdf_file(request)
      data, _status_code, _headers = html_get_pdf_file_with_http_info(request)
      data
    end

    # Downloads document as PDF.
    # 
    # @param request html_get_pdf_file_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def html_get_pdf_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetPdfFileRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_pdf_file ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_pdf_file' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/pdf'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_pdf_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads document at provided URL as PDF.  Document will be retrieved from the passed URL and added to Storage.
    # 
    # @param request html_get_pdf_file_from_url_request
    # @return [File]
    def html_get_pdf_file_from_url(request)
      data, _status_code, _headers = html_get_pdf_file_from_url_with_http_info(request)
      data
    end

    # Downloads document at provided URL as PDF.  Document will be retrieved from the passed URL and added to Storage.
    # 
    # @param request html_get_pdf_file_from_url_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def html_get_pdf_file_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetPdfFileFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_pdf_file_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.html_get_pdf_file_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/html/pdf'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_pdf_file_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves attachment pages as HTML.
    # 
    # @param request html_get_zip_with_attachment_pages_request
    # @return [File]
    def html_get_zip_with_attachment_pages(request)
      data, _status_code, _headers = html_get_zip_with_attachment_pages_with_http_info(request)
      data
    end

    # Retrieves attachment pages as HTML.
    # 
    # @param request html_get_zip_with_attachment_pages_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def html_get_zip_with_attachment_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetZipWithAttachmentPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_zip_with_attachment_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_zip_with_attachment_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.html_get_zip_with_attachment_pages' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/attachments/{attachmentName}/pages/zip'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('ResourcePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ResourcePath') + '}', request.resource_path.to_s)
      else
        query_params[downcase_first_letter('ResourcePath')] = request.resource_path unless request.resource_path.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}', request.ignore_resource_path_in_resources.to_s)
      else
        query_params[downcase_first_letter('IgnoreResourcePathInResources')] = request.ignore_resource_path_in_resources unless request.ignore_resource_path_in_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EmbedResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EmbedResources') + '}', request.embed_resources.to_s)
      else
        query_params[downcase_first_letter('EmbedResources')] = request.embed_resources unless request.embed_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableMinification') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableMinification') + '}', request.enable_minification.to_s)
      else
        query_params[downcase_first_letter('EnableMinification')] = request.enable_minification unless request.enable_minification.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableResponsiveRendering') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableResponsiveRendering') + '}', request.enable_responsive_rendering.to_s)
      else
        query_params[downcase_first_letter('EnableResponsiveRendering')] = request.enable_responsive_rendering unless request.enable_responsive_rendering.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExcludeFonts') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExcludeFonts') + '}', request.exclude_fonts.to_s)
      else
        query_params[downcase_first_letter('ExcludeFonts')] = request.exclude_fonts unless request.exclude_fonts.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('AttachmentPassword') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentPassword') + '}', request.attachment_password.to_s)
      else
        query_params[downcase_first_letter('AttachmentPassword')] = request.attachment_password unless request.attachment_password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/zip'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_zip_with_attachment_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves list of document pages as HTML.
    # 
    # @param request html_get_zip_with_pages_request
    # @return [File]
    def html_get_zip_with_pages(request)
      data, _status_code, _headers = html_get_zip_with_pages_with_http_info(request)
      data
    end

    # Retrieves list of document pages as HTML.
    # 
    # @param request html_get_zip_with_pages_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def html_get_zip_with_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlGetZipWithPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_get_zip_with_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_get_zip_with_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/pages/zip'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('ResourcePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ResourcePath') + '}', request.resource_path.to_s)
      else
        query_params[downcase_first_letter('ResourcePath')] = request.resource_path unless request.resource_path.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IgnoreResourcePathInResources') + '}', request.ignore_resource_path_in_resources.to_s)
      else
        query_params[downcase_first_letter('IgnoreResourcePathInResources')] = request.ignore_resource_path_in_resources unless request.ignore_resource_path_in_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EmbedResources') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EmbedResources') + '}', request.embed_resources.to_s)
      else
        query_params[downcase_first_letter('EmbedResources')] = request.embed_resources unless request.embed_resources.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableMinification') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableMinification') + '}', request.enable_minification.to_s)
      else
        query_params[downcase_first_letter('EnableMinification')] = request.enable_minification unless request.enable_minification.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('EnableResponsiveRendering') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('EnableResponsiveRendering') + '}', request.enable_responsive_rendering.to_s)
      else
        query_params[downcase_first_letter('EnableResponsiveRendering')] = request.enable_responsive_rendering unless request.enable_responsive_rendering.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExcludeFonts') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExcludeFonts') + '}', request.exclude_fonts.to_s)
      else
        query_params[downcase_first_letter('ExcludeFonts')] = request.exclude_fonts unless request.exclude_fonts.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/zip'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_get_zip_with_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Rotates or reorders document page(s).
    # 
    # @param request html_transform_pages_request
    # @return [PageInfoCollection]
    def html_transform_pages(request)
      data, _status_code, _headers = html_transform_pages_with_http_info(request)
      data
    end

    # Rotates or reorders document page(s).
    # 
    # @param request html_transform_pages_request
    # @return [Array<(PageInfoCollection, Fixnum, Hash)>]
    # PageInfoCollection data, response status code and response headers
    def html_transform_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? HtmlTransformPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.html_transform_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.html_transform_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/html/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.transform_options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'PageInfoCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#html_transform_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates attachment cache.
    # 
    # @param request image_create_attachment_pages_cache_request
    # @return [ImageAttachmentPageCollection]
    def image_create_attachment_pages_cache(request)
      data, _status_code, _headers = image_create_attachment_pages_cache_with_http_info(request)
      data
    end

    # Creates attachment cache.
    # 
    # @param request image_create_attachment_pages_cache_request
    # @return [Array<(ImageAttachmentPageCollection, Fixnum, Hash)>]
    # ImageAttachmentPageCollection data, response status code and response headers
    def image_create_attachment_pages_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageCreateAttachmentPagesCacheRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_create_attachment_pages_cache ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_create_attachment_pages_cache' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.image_create_attachment_pages_cache' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/attachments/{attachmentName}/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.image_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'ImageAttachmentPageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_create_attachment_pages_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates document pages as image and saves them in cache.  Pages created before will be removed from cache.
    # 
    # @param request image_create_pages_cache_request
    # @return [ImagePageCollection]
    def image_create_pages_cache(request)
      data, _status_code, _headers = image_create_pages_cache_with_http_info(request)
      data
    end

    # Creates document pages as image and saves them in cache.  Pages created before will be removed from cache.
    # 
    # @param request image_create_pages_cache_request
    # @return [Array<(ImagePageCollection, Fixnum, Hash)>]
    # ImagePageCollection data, response status code and response headers
    def image_create_pages_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageCreatePagesCacheRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_create_pages_cache ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_create_pages_cache' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.image_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'ImagePageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_create_pages_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates posted document pages as image and saves them in cache. Content with document or multipart content is expected where first part is document and second is HtmlOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_create_pages_cache_from_content_request
    # @return [ImagePageCollection]
    def image_create_pages_cache_from_content(request)
      data, _status_code, _headers = image_create_pages_cache_from_content_with_http_info(request)
      data
    end

    # Creates posted document pages as image and saves them in cache. Content with document or multipart content is expected where first part is document and second is HtmlOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_create_pages_cache_from_content_request
    # @return [Array<(ImagePageCollection, Fixnum, Hash)>]
    # ImagePageCollection data, response status code and response headers
    def image_create_pages_cache_from_content_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageCreatePagesCacheFromContentRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_create_pages_cache_from_content ...' if @api_client.config.debugging
      # verify the required parameter 'file' is set
      raise ArgumentError, 'Missing the required parameter file when calling ViewerApi.image_create_pages_cache_from_content' if @api_client.config.client_side_validation && request.file.nil?
      # verify the required parameter 'image_options' is set
      raise ArgumentError, 'Missing the required parameter image_options when calling ViewerApi.image_create_pages_cache_from_content' if @api_client.config.client_side_validation && request.image_options.nil?
      # resource path
      local_var_path = '/viewer/image/pages'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('File')] = request.file
      form_params[downcase_first_letter('ImageOptions')] = request.image_options

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'ImagePageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_create_pages_cache_from_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates pages as image and saves them in cache for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_create_pages_cache_from_url_request
    # @return [ImagePageCollection]
    def image_create_pages_cache_from_url(request)
      data, _status_code, _headers = image_create_pages_cache_from_url_with_http_info(request)
      data
    end

    # Creates pages as image and saves them in cache for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_create_pages_cache_from_url_request
    # @return [Array<(ImagePageCollection, Fixnum, Hash)>]
    # ImagePageCollection data, response status code and response headers
    def image_create_pages_cache_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageCreatePagesCacheFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_create_pages_cache_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.image_create_pages_cache_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/image/pages'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.image_options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'ImagePageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_create_pages_cache_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates PDF document.  Removes PDF document if it was created before.
    # 
    # @param request image_create_pdf_file_request
    # @return [PdfFileInfo]
    def image_create_pdf_file(request)
      data, _status_code, _headers = image_create_pdf_file_with_http_info(request)
      data
    end

    # Creates PDF document.  Removes PDF document if it was created before.
    # 
    # @param request image_create_pdf_file_request
    # @return [Array<(PdfFileInfo, Fixnum, Hash)>]
    # PdfFileInfo data, response status code and response headers
    def image_create_pdf_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageCreatePdfFileRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_create_pdf_file ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_create_pdf_file' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/pdf'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.pdf_file_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'PdfFileInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_create_pdf_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates PDF document from document passed in request body and saves it in cache. Content with document or multipart content is expected where first part is document and second is PdfFileOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_create_pdf_file_from_content_request
    # @return [PdfFileInfo]
    def image_create_pdf_file_from_content(request)
      data, _status_code, _headers = image_create_pdf_file_from_content_with_http_info(request)
      data
    end

    # Creates PDF document from document passed in request body and saves it in cache. Content with document or multipart content is expected where first part is document and second is PdfFileOptions. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_create_pdf_file_from_content_request
    # @return [Array<(PdfFileInfo, Fixnum, Hash)>]
    # PdfFileInfo data, response status code and response headers
    def image_create_pdf_file_from_content_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageCreatePdfFileFromContentRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_create_pdf_file_from_content ...' if @api_client.config.debugging
      # verify the required parameter 'file' is set
      raise ArgumentError, 'Missing the required parameter file when calling ViewerApi.image_create_pdf_file_from_content' if @api_client.config.client_side_validation && request.file.nil?
      # verify the required parameter 'pdf_file_options' is set
      raise ArgumentError, 'Missing the required parameter pdf_file_options when calling ViewerApi.image_create_pdf_file_from_content' if @api_client.config.client_side_validation && request.pdf_file_options.nil?
      # resource path
      local_var_path = '/viewer/image/pdf'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('File')] = request.file
      form_params[downcase_first_letter('PdfFileOptions')] = request.pdf_file_options

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'PdfFileInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_create_pdf_file_from_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates PDF document for document at provided URL and saves it in cache.  Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file. Expects PdfFileOptions object data in request body.
    # 
    # @param request image_create_pdf_file_from_url_request
    # @return [PdfFileInfo]
    def image_create_pdf_file_from_url(request)
      data, _status_code, _headers = image_create_pdf_file_from_url_with_http_info(request)
      data
    end

    # Creates PDF document for document at provided URL and saves it in cache.  Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file. Expects PdfFileOptions object data in request body.
    # 
    # @param request image_create_pdf_file_from_url_request
    # @return [Array<(PdfFileInfo, Fixnum, Hash)>]
    # PdfFileInfo data, response status code and response headers
    def image_create_pdf_file_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageCreatePdfFileFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_create_pdf_file_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.image_create_pdf_file_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/image/pdf'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.pdf_file_options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'PdfFileInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_create_pdf_file_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes attachment cache.
    # 
    # @param request image_delete_attachment_pages_cache_request
    # @return [nil]
    def image_delete_attachment_pages_cache(request)
      image_delete_attachment_pages_cache_with_http_info(request)
      nil
    end

    # Removes attachment cache.
    # 
    # @param request image_delete_attachment_pages_cache_request
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def image_delete_attachment_pages_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageDeleteAttachmentPagesCacheRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_delete_attachment_pages_cache ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_delete_attachment_pages_cache' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.image_delete_attachment_pages_cache' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/attachments/{attachmentName}/pages/cache'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_delete_attachment_pages_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes document cache.
    # 
    # @param request image_delete_pages_cache_request
    # @return [nil]
    def image_delete_pages_cache(request)
      image_delete_pages_cache_with_http_info(request)
      nil
    end

    # Removes document cache.
    # 
    # @param request image_delete_pages_cache_request
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def image_delete_pages_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageDeletePagesCacheRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_delete_pages_cache ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_delete_pages_cache' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/pages/cache'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_delete_pages_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads attachment.
    # 
    # @param request image_get_attachment_request
    # @return [File]
    def image_get_attachment(request)
      data, _status_code, _headers = image_get_attachment_with_http_info(request)
      data
    end

    # Downloads attachment.
    # 
    # @param request image_get_attachment_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def image_get_attachment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetAttachmentRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_attachment ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_attachment' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.image_get_attachment' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/attachments/{attachmentName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves attachment information.
    # 
    # @param request image_get_attachment_info_request
    # @return [DocumentInfo]
    def image_get_attachment_info(request)
      data, _status_code, _headers = image_get_attachment_info_with_http_info(request)
      data
    end

    # Retrieves attachment information.
    # 
    # @param request image_get_attachment_info_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def image_get_attachment_info_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetAttachmentInfoRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_attachment_info ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_attachment_info' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.image_get_attachment_info' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/attachments/{attachmentName}/info'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('AttachmentPassword') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentPassword') + '}', request.attachment_password.to_s)
      else
        query_params[downcase_first_letter('AttachmentPassword')] = request.attachment_password unless request.attachment_password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_attachment_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves attachment information with specified DocumentInfoOptions. Expects DocumentInfoOptions object data in request body.
    # 
    # @param request image_get_attachment_info_with_options_request
    # @return [DocumentInfo]
    def image_get_attachment_info_with_options(request)
      data, _status_code, _headers = image_get_attachment_info_with_options_with_http_info(request)
      data
    end

    # Retrieves attachment information with specified DocumentInfoOptions. Expects DocumentInfoOptions object data in request body.
    # 
    # @param request image_get_attachment_info_with_options_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def image_get_attachment_info_with_options_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetAttachmentInfoWithOptionsRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_attachment_info_with_options ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_attachment_info_with_options' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.image_get_attachment_info_with_options' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/attachments/{attachmentName}/info'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document_info_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_attachment_info_with_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads attachment page as image.
    # 
    # @param request image_get_attachment_page_request
    # @return [File]
    def image_get_attachment_page(request)
      data, _status_code, _headers = image_get_attachment_page_with_http_info(request)
      data
    end

    # Downloads attachment page as image.
    # 
    # @param request image_get_attachment_page_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def image_get_attachment_page_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetAttachmentPageRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_attachment_page ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_attachment_page' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.image_get_attachment_page' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # verify the required parameter 'page_number' is set
      raise ArgumentError, 'Missing the required parameter page_number when calling ViewerApi.image_get_attachment_page' if @api_client.config.client_side_validation && request.page_number.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/attachments/{attachmentName}/pages/{pageNumber}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PageNumber') + '}', request.page_number.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Format') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Format') + '}', request.format.to_s)
      else
        query_params[downcase_first_letter('Format')] = request.format unless request.format.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Width') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Width') + '}', request.width.to_s)
      else
        query_params[downcase_first_letter('Width')] = request.width unless request.width.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Height') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Height') + '}', request.height.to_s)
      else
        query_params[downcase_first_letter('Height')] = request.height unless request.height.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Quality') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Quality') + '}', request.quality.to_s)
      else
        query_params[downcase_first_letter('Quality')] = request.quality unless request.quality.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('AttachmentPassword') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentPassword') + '}', request.attachment_password.to_s)
      else
        query_params[downcase_first_letter('AttachmentPassword')] = request.attachment_password unless request.attachment_password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_attachment_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves attachment pages as images.
    # 
    # @param request image_get_attachment_pages_request
    # @return [ImageAttachmentPageCollection]
    def image_get_attachment_pages(request)
      data, _status_code, _headers = image_get_attachment_pages_with_http_info(request)
      data
    end

    # Retrieves attachment pages as images.
    # 
    # @param request image_get_attachment_pages_request
    # @return [Array<(ImageAttachmentPageCollection, Fixnum, Hash)>]
    # ImageAttachmentPageCollection data, response status code and response headers
    def image_get_attachment_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetAttachmentPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_attachment_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_attachment_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.image_get_attachment_pages' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/attachments/{attachmentName}/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Format') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Format') + '}', request.format.to_s)
      else
        query_params[downcase_first_letter('Format')] = request.format unless request.format.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Width') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Width') + '}', request.width.to_s)
      else
        query_params[downcase_first_letter('Width')] = request.width unless request.width.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Height') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Height') + '}', request.height.to_s)
      else
        query_params[downcase_first_letter('Height')] = request.height unless request.height.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Quality') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Quality') + '}', request.quality.to_s)
      else
        query_params[downcase_first_letter('Quality')] = request.quality unless request.quality.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('AttachmentPassword') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentPassword') + '}', request.attachment_password.to_s)
      else
        query_params[downcase_first_letter('AttachmentPassword')] = request.attachment_password unless request.attachment_password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml', 'application/zip'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'ImageAttachmentPageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_attachment_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves list of document attachments.
    # 
    # @param request image_get_attachments_request
    # @return [AttachmentCollection]
    def image_get_attachments(request)
      data, _status_code, _headers = image_get_attachments_with_http_info(request)
      data
    end

    # Retrieves list of document attachments.
    # 
    # @param request image_get_attachments_request
    # @return [Array<(AttachmentCollection, Fixnum, Hash)>]
    # AttachmentCollection data, response status code and response headers
    def image_get_attachments_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetAttachmentsRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_attachments ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_attachments' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/attachments'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'AttachmentCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information.
    # 
    # @param request image_get_document_info_request
    # @return [DocumentInfo]
    def image_get_document_info(request)
      data, _status_code, _headers = image_get_document_info_with_http_info(request)
      data
    end

    # Retrieves document information.
    # 
    # @param request image_get_document_info_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def image_get_document_info_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetDocumentInfoRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_document_info ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_document_info' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/info'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_document_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information for posted document. Content with document or multipart content is expected where first part is document and second is DocumentInfoOptions. Saves file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_get_document_info_from_content_request
    # @return [DocumentInfo]
    def image_get_document_info_from_content(request)
      data, _status_code, _headers = image_get_document_info_from_content_with_http_info(request)
      data
    end

    # Retrieves document information for posted document. Content with document or multipart content is expected where first part is document and second is DocumentInfoOptions. Saves file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_get_document_info_from_content_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def image_get_document_info_from_content_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetDocumentInfoFromContentRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_document_info_from_content ...' if @api_client.config.debugging
      # verify the required parameter 'file' is set
      raise ArgumentError, 'Missing the required parameter file when calling ViewerApi.image_get_document_info_from_content' if @api_client.config.client_side_validation && request.file.nil?
      # verify the required parameter 'document_info_options' is set
      raise ArgumentError, 'Missing the required parameter document_info_options when calling ViewerApi.image_get_document_info_from_content' if @api_client.config.client_side_validation && request.document_info_options.nil?
      # resource path
      local_var_path = '/viewer/image/info'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('File')] = request.file
      form_params[downcase_first_letter('DocumentInfoOptions')] = request.document_info_options

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_document_info_from_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_get_document_info_from_url_request
    # @return [DocumentInfo]
    def image_get_document_info_from_url(request)
      data, _status_code, _headers = image_get_document_info_from_url_with_http_info(request)
      data
    end

    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_get_document_info_from_url_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def image_get_document_info_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetDocumentInfoFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_document_info_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.image_get_document_info_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/image/info'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_document_info_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_get_document_info_from_url_with_options_request
    # @return [DocumentInfo]
    def image_get_document_info_from_url_with_options(request)
      data, _status_code, _headers = image_get_document_info_from_url_with_options_with_http_info(request)
      data
    end

    # Retrieves document information for document at provided URL. Retrieves file from specified URL and tries to detect file type when fileName parameter is not specified. Saves retrieved file in storage. Use fileName and folder parameters to specify desired file name and folder to save file. When file with specified name already exists in storage new unique file name will be used for file.
    # 
    # @param request image_get_document_info_from_url_with_options_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def image_get_document_info_from_url_with_options_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetDocumentInfoFromUrlWithOptionsRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_document_info_from_url_with_options ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.image_get_document_info_from_url_with_options' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/image/info'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document_info_options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_document_info_from_url_with_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document information with specified options. Expects DocumentInfoOptions object data in request body.
    # 
    # @param request image_get_document_info_with_options_request
    # @return [DocumentInfo]
    def image_get_document_info_with_options(request)
      data, _status_code, _headers = image_get_document_info_with_options_with_http_info(request)
      data
    end

    # Retrieves document information with specified options. Expects DocumentInfoOptions object data in request body.
    # 
    # @param request image_get_document_info_with_options_request
    # @return [Array<(DocumentInfo, Fixnum, Hash)>]
    # DocumentInfo data, response status code and response headers
    def image_get_document_info_with_options_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetDocumentInfoWithOptionsRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_document_info_with_options ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_document_info_with_options' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/info'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document_info_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_document_info_with_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads document page as image.
    # 
    # @param request image_get_page_request
    # @return [File]
    def image_get_page(request)
      data, _status_code, _headers = image_get_page_with_http_info(request)
      data
    end

    # Downloads document page as image.
    # 
    # @param request image_get_page_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def image_get_page_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetPageRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_page ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_page' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'page_number' is set
      raise ArgumentError, 'Missing the required parameter page_number when calling ViewerApi.image_get_page' if @api_client.config.client_side_validation && request.page_number.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/pages/{pageNumber}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PageNumber') + '}', request.page_number.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Format') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Format') + '}', request.format.to_s)
      else
        query_params[downcase_first_letter('Format')] = request.format unless request.format.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Width') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Width') + '}', request.width.to_s)
      else
        query_params[downcase_first_letter('Width')] = request.width unless request.width.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Height') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Height') + '}', request.height.to_s)
      else
        query_params[downcase_first_letter('Height')] = request.height unless request.height.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Quality') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Quality') + '}', request.quality.to_s)
      else
        query_params[downcase_first_letter('Quality')] = request.quality unless request.quality.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves list of document pages as image.
    # 
    # @param request image_get_pages_request
    # @return [ImagePageCollection]
    def image_get_pages(request)
      data, _status_code, _headers = image_get_pages_with_http_info(request)
      data
    end

    # Retrieves list of document pages as image.
    # 
    # @param request image_get_pages_request
    # @return [Array<(ImagePageCollection, Fixnum, Hash)>]
    # ImagePageCollection data, response status code and response headers
    def image_get_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Format') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Format') + '}', request.format.to_s)
      else
        query_params[downcase_first_letter('Format')] = request.format unless request.format.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Width') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Width') + '}', request.width.to_s)
      else
        query_params[downcase_first_letter('Width')] = request.width unless request.width.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Height') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Height') + '}', request.height.to_s)
      else
        query_params[downcase_first_letter('Height')] = request.height unless request.height.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Quality') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Quality') + '}', request.quality.to_s)
      else
        query_params[downcase_first_letter('Quality')] = request.quality unless request.quality.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'ImagePageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves list of document pages as image.
    # 
    # @param request image_get_pages_from_url_request
    # @return [ImagePageCollection]
    def image_get_pages_from_url(request)
      data, _status_code, _headers = image_get_pages_from_url_with_http_info(request)
      data
    end

    # Retrieves list of document pages as image.
    # 
    # @param request image_get_pages_from_url_request
    # @return [Array<(ImagePageCollection, Fixnum, Hash)>]
    # ImagePageCollection data, response status code and response headers
    def image_get_pages_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetPagesFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_pages_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.image_get_pages_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/image/pages'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Format') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Format') + '}', request.format.to_s)
      else
        query_params[downcase_first_letter('Format')] = request.format unless request.format.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Width') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Width') + '}', request.width.to_s)
      else
        query_params[downcase_first_letter('Width')] = request.width unless request.width.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Height') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Height') + '}', request.height.to_s)
      else
        query_params[downcase_first_letter('Height')] = request.height unless request.height.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Quality') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Quality') + '}', request.quality.to_s)
      else
        query_params[downcase_first_letter('Quality')] = request.quality unless request.quality.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'ImagePageCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_pages_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads document as PDF.
    # 
    # @param request image_get_pdf_file_request
    # @return [File]
    def image_get_pdf_file(request)
      data, _status_code, _headers = image_get_pdf_file_with_http_info(request)
      data
    end

    # Downloads document as PDF.
    # 
    # @param request image_get_pdf_file_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def image_get_pdf_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetPdfFileRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_pdf_file ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_pdf_file' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/pdf'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_pdf_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads document at provided URL as PDF.  Document will be retrieved from the passed URL and added to Storage.
    # 
    # @param request image_get_pdf_file_from_url_request
    # @return [File]
    def image_get_pdf_file_from_url(request)
      data, _status_code, _headers = image_get_pdf_file_from_url_with_http_info(request)
      data
    end

    # Downloads document at provided URL as PDF.  Document will be retrieved from the passed URL and added to Storage.
    # 
    # @param request image_get_pdf_file_from_url_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def image_get_pdf_file_from_url_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetPdfFileFromUrlRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_pdf_file_from_url ...' if @api_client.config.debugging
      # verify the required parameter 'url' is set
      raise ArgumentError, 'Missing the required parameter url when calling ViewerApi.image_get_pdf_file_from_url' if @api_client.config.client_side_validation && request.url.nil?
      # resource path
      local_var_path = '/viewer/image/pdf'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Url')] = request.url

      if local_var_path.include? ('{' + downcase_first_letter('FileName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_pdf_file_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves attachment pages as images.
    # 
    # @param request image_get_zip_with_attachment_pages_request
    # @return [File]
    def image_get_zip_with_attachment_pages(request)
      data, _status_code, _headers = image_get_zip_with_attachment_pages_with_http_info(request)
      data
    end

    # Retrieves attachment pages as images.
    # 
    # @param request image_get_zip_with_attachment_pages_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def image_get_zip_with_attachment_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetZipWithAttachmentPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_zip_with_attachment_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_zip_with_attachment_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # verify the required parameter 'attachment_name' is set
      raise ArgumentError, 'Missing the required parameter attachment_name when calling ViewerApi.image_get_zip_with_attachment_pages' if @api_client.config.client_side_validation && request.attachment_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/attachments/{attachmentName}/pages/zip'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentName') + '}', request.attachment_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Format') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Format') + '}', request.format.to_s)
      else
        query_params[downcase_first_letter('Format')] = request.format unless request.format.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Width') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Width') + '}', request.width.to_s)
      else
        query_params[downcase_first_letter('Width')] = request.width unless request.width.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Height') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Height') + '}', request.height.to_s)
      else
        query_params[downcase_first_letter('Height')] = request.height unless request.height.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Quality') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Quality') + '}', request.quality.to_s)
      else
        query_params[downcase_first_letter('Quality')] = request.quality unless request.quality.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('AttachmentPassword') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('AttachmentPassword') + '}', request.attachment_password.to_s)
      else
        query_params[downcase_first_letter('AttachmentPassword')] = request.attachment_password unless request.attachment_password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/zip'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_zip_with_attachment_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves list of document pages as image.
    # 
    # @param request image_get_zip_with_pages_request
    # @return [File]
    def image_get_zip_with_pages(request)
      data, _status_code, _headers = image_get_zip_with_pages_with_http_info(request)
      data
    end

    # Retrieves list of document pages as image.
    # 
    # @param request image_get_zip_with_pages_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def image_get_zip_with_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageGetZipWithPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_get_zip_with_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_get_zip_with_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/pages/zip'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Format') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Format') + '}', request.format.to_s)
      else
        query_params[downcase_first_letter('Format')] = request.format unless request.format.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Width') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Width') + '}', request.width.to_s)
      else
        query_params[downcase_first_letter('Width')] = request.width unless request.width.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Height') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Height') + '}', request.height.to_s)
      else
        query_params[downcase_first_letter('Height')] = request.height unless request.height.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Quality') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Quality') + '}', request.quality.to_s)
      else
        query_params[downcase_first_letter('Quality')] = request.quality unless request.quality.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StartPageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StartPageNumber') + '}', request.start_page_number.to_s)
      else
        query_params[downcase_first_letter('StartPageNumber')] = request.start_page_number unless request.start_page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('CountPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CountPages') + '}', request.count_pages.to_s)
      else
        query_params[downcase_first_letter('CountPages')] = request.count_pages unless request.count_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('ExtractText') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ExtractText') + '}', request.extract_text.to_s)
      else
        query_params[downcase_first_letter('ExtractText')] = request.extract_text unless request.extract_text.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderComments') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderComments') + '}', request.render_comments.to_s)
      else
        query_params[downcase_first_letter('RenderComments')] = request.render_comments unless request.render_comments.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('RenderHiddenPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RenderHiddenPages') + '}', request.render_hidden_pages.to_s)
      else
        query_params[downcase_first_letter('RenderHiddenPages')] = request.render_hidden_pages unless request.render_hidden_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('DefaultFontName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DefaultFontName') + '}', request.default_font_name.to_s)
      else
        query_params[downcase_first_letter('DefaultFontName')] = request.default_font_name unless request.default_font_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('FontsFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsFolder') + '}', request.fonts_folder.to_s)
      else
        query_params[downcase_first_letter('FontsFolder')] = request.fonts_folder unless request.fonts_folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/zip'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_get_zip_with_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Rotates or reorders document page(s).
    # 
    # @param request image_transform_pages_request
    # @return [PageInfoCollection]
    def image_transform_pages(request)
      data, _status_code, _headers = image_transform_pages_with_http_info(request)
      data
    end

    # Rotates or reorders document page(s).
    # 
    # @param request image_transform_pages_request
    # @return [Array<(PageInfoCollection, Fixnum, Hash)>]
    # PageInfoCollection data, response status code and response headers
    def image_transform_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ImageTransformPagesRequest

      @api_client.config.logger.debug 'Calling API: ViewerApi.image_transform_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_name' is set
      raise ArgumentError, 'Missing the required parameter file_name when calling ViewerApi.image_transform_pages' if @api_client.config.client_side_validation && request.file_name.nil?
      # resource path
      local_var_path = '/viewer/{fileName}/image/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Storage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.transform_options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'PageInfoCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ViewerApi#image_transform_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    #
    # Helper method to convert first letter to downcase
    #
    private def downcase_first_letter(str)
      value = str[0].downcase + str[1..-1]
      value
    end
                 
    #
    # Retrieves access token
    #
    private def get_access_token
        if @access_token.nil? then
          request_access_token
        else 
          access_token_expired = @access_token_expires_at < DateTime.now
          if access_token_expired then
            reset_access_token
          end
        end
        
        @access_token  
    end

    #
    # Gets a access token from server
    #
    private def request_access_token
        auth_config = Configuration.new(@config.app_sid, @config.app_key)
        auth_config.api_base_url = @config.api_base_url
        auth_config.debugging = @config.debugging
        auth_config.logger = @config.logger
        auth_config.temp_folder_path = @config.temp_folder_path
        auth_config.client_side_validation = @config.client_side_validation
        auth_config.api_version = ''

        auth_api_client = ApiClient.new(auth_config)

        request_url = "/oauth2/token"
        post_data = "grant_type=client_credentials&client_id=#{@config.app_sid}&client_secret=#{@config.app_key}"

        data, _status_code, _header = auth_api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
        
        @access_token = data[:access_token]
        @refresh_token = data[:refresh_token]

        expires_in_seconds = data[:expires_in].to_i - 5 * 60 
        expires_in_days = Rational(expires_in_seconds, 60 * 60 * 24)
        @access_token_expires_at = DateTime.now + expires_in_days
    end

    #
    # Resets access token
    #
    private def reset_access_token
        auth_config = Configuration.new(@config.app_sid, @config.app_key)
        auth_config.api_base_url = @config.api_base_url
        auth_config.debugging = @config.debugging
        auth_config.logger = @config.logger
        auth_config.temp_folder_path = @config.temp_folder_path
        auth_config.client_side_validation = @config.client_side_validation
        auth_config.api_version = ''

        auth_api_client = ApiClient.new(auth_config)

        request_url = "/oauth2/token"
        post_data = "grant_type=refresh_token&refresh_token=#{@refresh_token}"

        data, _status_code, _header = auth_api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
        
        @access_token = data[:access_token]
        @refresh_token = data[:refresh_token]

        expires_in_seconds = data[:expires_in].to_i - 5 * 60 
        expires_in_days = Rational(expires_in_seconds, 60 * 60 * 24)
        @access_token_expires_at = DateTime.now + expires_in_days
    end
    
    # requires all files inside a directory from current dir
    # @param _dir can be relative path like '/lib' or "../lib"
    private def require_all(_dir)
      Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/*.rb"].each do |file|
        require file
      end
    end
  end
end
