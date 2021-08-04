 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="html_options.rb">
 #   Copyright (c) 2003-2021 Aspose Pty Ltd
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
 # --------------------------------------------------------------------------------------------------------------------
 #

require 'date'

module GroupDocsViewerCloud
  # Options for rendering document into HTML
  class HtmlOptions

    # Page number from which rendering should be started
    attr_accessor :start_page_number

    # Count pages which should be rendered
    attr_accessor :count_pages_to_render

    # Pages list to render. Ignored, if StartPageNumber and CountPagesToRender are provided
    attr_accessor :pages_to_render

    # Page rotations
    attr_accessor :page_rotations

    # Default font name may be specified in following cases: - You want to generally specify the default font to fall back on, if particular font   in the document cannot be found during rendering. - Your document uses fonts, that contain non-English characters and you want to make sure   any missing font is replaced with one that has the same character set available.
    attr_accessor :default_font_name

    # Default encoding for the plain text files such as .csv, .txt and .eml files when encoding is not specified in header
    attr_accessor :default_encoding

    # When enabled comments will be rendered to the output
    attr_accessor :render_comments

    # When enabled notes will be rendered to the output
    attr_accessor :render_notes

    # When enabled hidden pages, sheets or slides will be rendered to the output
    attr_accessor :render_hidden_pages

    # Rendering options for Spreadsheet source file formats Spreadsheet file formats include files with extensions: .xls, .xlsx, .xlsm, .xlsb, .csv, .ods, .ots, .xltx, .xltm, .tsv 
    attr_accessor :spreadsheet_options

    # Rendering options for CAD source file formats CAD file formats include files with extensions: .dwg, .dxf, .dgn, .ifc, .stl
    attr_accessor :cad_options

    # Rendering options for Email source file formats Email file formats include files with extensions: .msg, .eml, .emlx, .ifc, .stl
    attr_accessor :email_options

    # Rendering options for MS Project source file formats Project file formats include files with extensions: .mpt, .mpp
    attr_accessor :project_management_options

    # Rendering options for PDF source file formats
    attr_accessor :pdf_document_options

    # Rendering options for WordProcessing source file formats
    attr_accessor :word_processing_options

    # Rendering options for Outlook source file formats
    attr_accessor :outlook_options

    # Rendering options for Archive source file formats
    attr_accessor :archive_options

    # Rendering options for Text source file formats
    attr_accessor :text_options

    # Rendering options for Mail storage (Lotus Notes, MBox) data files.
    attr_accessor :mail_storage_options

    # Rendering options for Visio source file formats
    attr_accessor :visio_rendering_options

    # Controls output HTML document resources (styles, images and fonts) linking. By default this option is disabled and all the resources are embedded into HTML document.
    attr_accessor :external_resources

    # Path for the HTML resources (styles, images and fonts). For example when resource path is http://example.com/api/pages/{page-number}/resources/{resource-name} the {page-number} and {resource-name} templates will be replaced with page number and resource name accordingly. This option is ignored when ExternalResources option is disabled.
    attr_accessor :resource_path

    # Indicates whether rendering will provide responsive web pages, that look well on different device types. Default value is false.
    attr_accessor :is_responsive

    # Enables HTML content and HTML resources minification
    attr_accessor :minify

    # When enabled prevents adding any fonts into HTML document             
    attr_accessor :exclude_fonts

    # This option is supported for presentations only. The list of font names, to exclude from HTML document             
    attr_accessor :fonts_to_exclude

    # Indicates whether to optimize output HTML for printing.
    attr_accessor :for_printing

    # The height of an output image in pixels. (When converting single image to HTML only)
    attr_accessor :image_height

    # The width of the output image in pixels. (When converting single image to HTML only)
    attr_accessor :image_width

    # Max height of an output image in pixels. (When converting single image to HTML only)
    attr_accessor :image_max_height

    # Max width of an output image in pixels. (When converting single image to HTML only)
    attr_accessor :image_max_width

    # Enables HTML content will be rendered to single page
    attr_accessor :render_to_single_page

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'start_page_number' => :'StartPageNumber',
        :'count_pages_to_render' => :'CountPagesToRender',
        :'pages_to_render' => :'PagesToRender',
        :'page_rotations' => :'PageRotations',
        :'default_font_name' => :'DefaultFontName',
        :'default_encoding' => :'DefaultEncoding',
        :'render_comments' => :'RenderComments',
        :'render_notes' => :'RenderNotes',
        :'render_hidden_pages' => :'RenderHiddenPages',
        :'spreadsheet_options' => :'SpreadsheetOptions',
        :'cad_options' => :'CadOptions',
        :'email_options' => :'EmailOptions',
        :'project_management_options' => :'ProjectManagementOptions',
        :'pdf_document_options' => :'PdfDocumentOptions',
        :'word_processing_options' => :'WordProcessingOptions',
        :'outlook_options' => :'OutlookOptions',
        :'archive_options' => :'ArchiveOptions',
        :'text_options' => :'TextOptions',
        :'mail_storage_options' => :'MailStorageOptions',
        :'visio_rendering_options' => :'VisioRenderingOptions',
        :'external_resources' => :'ExternalResources',
        :'resource_path' => :'ResourcePath',
        :'is_responsive' => :'IsResponsive',
        :'minify' => :'Minify',
        :'exclude_fonts' => :'ExcludeFonts',
        :'fonts_to_exclude' => :'FontsToExclude',
        :'for_printing' => :'ForPrinting',
        :'image_height' => :'ImageHeight',
        :'image_width' => :'ImageWidth',
        :'image_max_height' => :'ImageMaxHeight',
        :'image_max_width' => :'ImageMaxWidth',
        :'render_to_single_page' => :'RenderToSinglePage'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'start_page_number' => :'Integer',
        :'count_pages_to_render' => :'Integer',
        :'pages_to_render' => :'Array<Integer>',
        :'page_rotations' => :'Array<PageRotation>',
        :'default_font_name' => :'String',
        :'default_encoding' => :'String',
        :'render_comments' => :'BOOLEAN',
        :'render_notes' => :'BOOLEAN',
        :'render_hidden_pages' => :'BOOLEAN',
        :'spreadsheet_options' => :'SpreadsheetOptions',
        :'cad_options' => :'CadOptions',
        :'email_options' => :'EmailOptions',
        :'project_management_options' => :'ProjectManagementOptions',
        :'pdf_document_options' => :'PdfDocumentOptions',
        :'word_processing_options' => :'WordProcessingOptions',
        :'outlook_options' => :'OutlookOptions',
        :'archive_options' => :'ArchiveOptions',
        :'text_options' => :'TextOptions',
        :'mail_storage_options' => :'MailStorageOptions',
        :'visio_rendering_options' => :'VisioRenderingOptions',
        :'external_resources' => :'BOOLEAN',
        :'resource_path' => :'String',
        :'is_responsive' => :'BOOLEAN',
        :'minify' => :'BOOLEAN',
        :'exclude_fonts' => :'BOOLEAN',
        :'fonts_to_exclude' => :'Array<String>',
        :'for_printing' => :'BOOLEAN',
        :'image_height' => :'Integer',
        :'image_width' => :'Integer',
        :'image_max_height' => :'Integer',
        :'image_max_width' => :'Integer',
        :'render_to_single_page' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'StartPageNumber')
        self.start_page_number = attributes[:'StartPageNumber']
      end

      if attributes.key?(:'CountPagesToRender')
        self.count_pages_to_render = attributes[:'CountPagesToRender']
      end

      if attributes.key?(:'PagesToRender')
        if (value = attributes[:'PagesToRender']).is_a?(Array)
          self.pages_to_render = value
        end
      end

      if attributes.key?(:'PageRotations')
        if (value = attributes[:'PageRotations']).is_a?(Array)
          self.page_rotations = value
        end
      end

      if attributes.key?(:'DefaultFontName')
        self.default_font_name = attributes[:'DefaultFontName']
      end

      if attributes.key?(:'DefaultEncoding')
        self.default_encoding = attributes[:'DefaultEncoding']
      end

      if attributes.key?(:'RenderComments')
        self.render_comments = attributes[:'RenderComments']
      end

      if attributes.key?(:'RenderNotes')
        self.render_notes = attributes[:'RenderNotes']
      end

      if attributes.key?(:'RenderHiddenPages')
        self.render_hidden_pages = attributes[:'RenderHiddenPages']
      end

      if attributes.key?(:'SpreadsheetOptions')
        self.spreadsheet_options = attributes[:'SpreadsheetOptions']
      end

      if attributes.key?(:'CadOptions')
        self.cad_options = attributes[:'CadOptions']
      end

      if attributes.key?(:'EmailOptions')
        self.email_options = attributes[:'EmailOptions']
      end

      if attributes.key?(:'ProjectManagementOptions')
        self.project_management_options = attributes[:'ProjectManagementOptions']
      end

      if attributes.key?(:'PdfDocumentOptions')
        self.pdf_document_options = attributes[:'PdfDocumentOptions']
      end

      if attributes.key?(:'WordProcessingOptions')
        self.word_processing_options = attributes[:'WordProcessingOptions']
      end

      if attributes.key?(:'OutlookOptions')
        self.outlook_options = attributes[:'OutlookOptions']
      end

      if attributes.key?(:'ArchiveOptions')
        self.archive_options = attributes[:'ArchiveOptions']
      end

      if attributes.key?(:'TextOptions')
        self.text_options = attributes[:'TextOptions']
      end

      if attributes.key?(:'MailStorageOptions')
        self.mail_storage_options = attributes[:'MailStorageOptions']
      end

      if attributes.key?(:'VisioRenderingOptions')
        self.visio_rendering_options = attributes[:'VisioRenderingOptions']
      end

      if attributes.key?(:'ExternalResources')
        self.external_resources = attributes[:'ExternalResources']
      end

      if attributes.key?(:'ResourcePath')
        self.resource_path = attributes[:'ResourcePath']
      end

      if attributes.key?(:'IsResponsive')
        self.is_responsive = attributes[:'IsResponsive']
      end

      if attributes.key?(:'Minify')
        self.minify = attributes[:'Minify']
      end

      if attributes.key?(:'ExcludeFonts')
        self.exclude_fonts = attributes[:'ExcludeFonts']
      end

      if attributes.key?(:'FontsToExclude')
        if (value = attributes[:'FontsToExclude']).is_a?(Array)
          self.fonts_to_exclude = value
        end
      end

      if attributes.key?(:'ForPrinting')
        self.for_printing = attributes[:'ForPrinting']
      end

      if attributes.key?(:'ImageHeight')
        self.image_height = attributes[:'ImageHeight']
      end

      if attributes.key?(:'ImageWidth')
        self.image_width = attributes[:'ImageWidth']
      end

      if attributes.key?(:'ImageMaxHeight')
        self.image_max_height = attributes[:'ImageMaxHeight']
      end

      if attributes.key?(:'ImageMaxWidth')
        self.image_max_width = attributes[:'ImageMaxWidth']
      end

      if attributes.key?(:'RenderToSinglePage')
        self.render_to_single_page = attributes[:'RenderToSinglePage']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @start_page_number.nil?
        invalid_properties.push("invalid value for 'start_page_number', start_page_number cannot be nil.")
      end

      if @count_pages_to_render.nil?
        invalid_properties.push("invalid value for 'count_pages_to_render', count_pages_to_render cannot be nil.")
      end

      if @render_comments.nil?
        invalid_properties.push("invalid value for 'render_comments', render_comments cannot be nil.")
      end

      if @render_notes.nil?
        invalid_properties.push("invalid value for 'render_notes', render_notes cannot be nil.")
      end

      if @render_hidden_pages.nil?
        invalid_properties.push("invalid value for 'render_hidden_pages', render_hidden_pages cannot be nil.")
      end

      if @external_resources.nil?
        invalid_properties.push("invalid value for 'external_resources', external_resources cannot be nil.")
      end

      if @is_responsive.nil?
        invalid_properties.push("invalid value for 'is_responsive', is_responsive cannot be nil.")
      end

      if @minify.nil?
        invalid_properties.push("invalid value for 'minify', minify cannot be nil.")
      end

      if @exclude_fonts.nil?
        invalid_properties.push("invalid value for 'exclude_fonts', exclude_fonts cannot be nil.")
      end

      if @for_printing.nil?
        invalid_properties.push("invalid value for 'for_printing', for_printing cannot be nil.")
      end

      if @image_height.nil?
        invalid_properties.push("invalid value for 'image_height', image_height cannot be nil.")
      end

      if @image_width.nil?
        invalid_properties.push("invalid value for 'image_width', image_width cannot be nil.")
      end

      if @image_max_height.nil?
        invalid_properties.push("invalid value for 'image_max_height', image_max_height cannot be nil.")
      end

      if @image_max_width.nil?
        invalid_properties.push("invalid value for 'image_max_width', image_max_width cannot be nil.")
      end

      if @render_to_single_page.nil?
        invalid_properties.push("invalid value for 'render_to_single_page', render_to_single_page cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @start_page_number.nil?
      return false if @count_pages_to_render.nil?
      return false if @render_comments.nil?
      return false if @render_notes.nil?
      return false if @render_hidden_pages.nil?
      return false if @external_resources.nil?
      return false if @is_responsive.nil?
      return false if @minify.nil?
      return false if @exclude_fonts.nil?
      return false if @for_printing.nil?
      return false if @image_height.nil?
      return false if @image_width.nil?
      return false if @image_max_height.nil?
      return false if @image_max_width.nil?
      return false if @render_to_single_page.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          start_page_number == other.start_page_number &&
          count_pages_to_render == other.count_pages_to_render &&
          pages_to_render == other.pages_to_render &&
          page_rotations == other.page_rotations &&
          default_font_name == other.default_font_name &&
          default_encoding == other.default_encoding &&
          render_comments == other.render_comments &&
          render_notes == other.render_notes &&
          render_hidden_pages == other.render_hidden_pages &&
          spreadsheet_options == other.spreadsheet_options &&
          cad_options == other.cad_options &&
          email_options == other.email_options &&
          project_management_options == other.project_management_options &&
          pdf_document_options == other.pdf_document_options &&
          word_processing_options == other.word_processing_options &&
          outlook_options == other.outlook_options &&
          archive_options == other.archive_options &&
          text_options == other.text_options &&
          mail_storage_options == other.mail_storage_options &&
          visio_rendering_options == other.visio_rendering_options &&
          external_resources == other.external_resources &&
          resource_path == other.resource_path &&
          is_responsive == other.is_responsive &&
          minify == other.minify &&
          exclude_fonts == other.exclude_fonts &&
          fonts_to_exclude == other.fonts_to_exclude &&
          for_printing == other.for_printing &&
          image_height == other.image_height &&
          image_width == other.image_width &&
          image_max_height == other.image_max_height &&
          image_max_width == other.image_max_width &&
          render_to_single_page == other.render_to_single_page
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [start_page_number, count_pages_to_render, pages_to_render, page_rotations, default_font_name, default_encoding, render_comments, render_notes, render_hidden_pages, spreadsheet_options, cad_options, email_options, project_management_options, pdf_document_options, word_processing_options, outlook_options, archive_options, text_options, mail_storage_options, visio_rendering_options, external_resources, resource_path, is_responsive, minify, exclude_fonts, fonts_to_exclude, for_printing, image_height, image_width, image_max_height, image_max_width, render_to_single_page].hash
    end

    # Downcases first letter.
    # @return downcased string
    def uncap(str)
      str[0, 1].downcase + str[1..-1]
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        pname = uncap(self.class.attribute_map[key]).intern
        value = attributes[pname]
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not                    
          if value.is_a?(Array)
            self.send("#{key}=", value.map { |v| _deserialize($1, v) })
          end
        elsif !value.nil?
          self.send("#{key}=", _deserialize(type, value))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Date.parse value
      when :Date
        Date.parse value
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
      # model
        temp_model = GroupDocsViewerCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
