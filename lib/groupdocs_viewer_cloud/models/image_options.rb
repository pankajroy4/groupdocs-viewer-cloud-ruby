 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="image_options.rb">
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
 # --------------------------------------------------------------------------------------------------------------------
 #

require 'date'

module GroupDocsViewerCloud
  # Provides options for rendering document as image.
  class ImageOptions

    # Allows to specify document password in case when document is password-protected.
    attr_accessor :password

    # Allows to specify attachment password in case when attachment is password-protected.
    attr_accessor :attachment_password

    # Enables document text extraction. For rendering document as image only.
    attr_accessor :extract_text

    # Enables document comments rendering.
    attr_accessor :render_comments

    # Enables rendering of document hidden pages, sheets or slides.
    attr_accessor :render_hidden_pages

    # Transforms to apply. Available transforms [\"Rotate\",\"Reorder\",\"AddPrintAction\"]. 1. Rotate - pages will be rotated on angle if angle was set before. 2. Reorder - for rendering document as PDF only. Pages will be ordered according to rearrangements made before. 3. AddPrintAction - for rendering document as PDF only. An JavaScript action will be added which opens print dialog when PDF document is opened.   
    attr_accessor :transforms

    # The name of the default font. Default font name may be specified in following cases: - You want to generally specify the default font to fall back on, if particular font   in the document cannot be found during rendering. - Your document uses fonts, that contain non-English characters and you want to make sure   any missing font is replaced with one that has the same character set available.
    attr_accessor :default_font_name

    # Allows to specify watermark.
    attr_accessor :watermark

    # The Spreadsheet documents rendering options.
    attr_accessor :cells_options

    # The CAD documents rendering options.
    attr_accessor :cad_options

    # The Email documents rendering options.
    attr_accessor :email_options

    # The Text documents rendering options.
    attr_accessor :words_options

    # The PDF documents rendering options.
    attr_accessor :pdf_options

    # The Presentation documents rendering options.
    attr_accessor :slides_options

    # The Microsoft Project documents rendering options.
    attr_accessor :project_options

    # Allows to specify document page number as starting page to render. 
    attr_accessor :start_page_number

    # Allows to specify count of document pages to render.
    attr_accessor :count_pages

    # Allows to set image format (png, jpg, bmp). Default value is png.
    attr_accessor :format

    # Allows to specify quality when rendering as JPG. Valid values are between 1 and 100.  Default value is 90.
    attr_accessor :quality

    # Allows to specify output image width.  Specify image width in case when you want to change output image dimensions. When Width has value and Height value is 0 then Height value will be calculated  to save image proportions. 
    attr_accessor :width

    # Allows to specify output image height.  Specify image height in case when you want to change output image dimensions. When Height has value and Width value is 0 then Width value will be calculated  to save image proportions.
    attr_accessor :height

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'password' => :'password',
        :'attachment_password' => :'attachmentPassword',
        :'extract_text' => :'extractText',
        :'render_comments' => :'renderComments',
        :'render_hidden_pages' => :'renderHiddenPages',
        :'transforms' => :'transforms',
        :'default_font_name' => :'defaultFontName',
        :'watermark' => :'watermark',
        :'cells_options' => :'cellsOptions',
        :'cad_options' => :'cadOptions',
        :'email_options' => :'emailOptions',
        :'words_options' => :'wordsOptions',
        :'pdf_options' => :'pdfOptions',
        :'slides_options' => :'slidesOptions',
        :'project_options' => :'projectOptions',
        :'start_page_number' => :'startPageNumber',
        :'count_pages' => :'countPages',
        :'format' => :'format',
        :'quality' => :'quality',
        :'width' => :'width',
        :'height' => :'height'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'password' => :'String',
        :'attachment_password' => :'String',
        :'extract_text' => :'BOOLEAN',
        :'render_comments' => :'BOOLEAN',
        :'render_hidden_pages' => :'BOOLEAN',
        :'transforms' => :'Array<String>',
        :'default_font_name' => :'String',
        :'watermark' => :'Watermark',
        :'cells_options' => :'CellsOptions',
        :'cad_options' => :'CadOptions',
        :'email_options' => :'EmailOptions',
        :'words_options' => :'WordsOptions',
        :'pdf_options' => :'PdfOptions',
        :'slides_options' => :'SlidesOptions',
        :'project_options' => :'ProjectOptions',
        :'start_page_number' => :'Integer',
        :'count_pages' => :'Integer',
        :'format' => :'String',
        :'quality' => :'Integer',
        :'width' => :'Integer',
        :'height' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'attachmentPassword')
        self.attachment_password = attributes[:'attachmentPassword']
      end

      if attributes.key?(:'extractText')
        self.extract_text = attributes[:'extractText']
      end

      if attributes.key?(:'renderComments')
        self.render_comments = attributes[:'renderComments']
      end

      if attributes.key?(:'renderHiddenPages')
        self.render_hidden_pages = attributes[:'renderHiddenPages']
      end

      if attributes.key?(:'transforms')
        if (value = attributes[:'transforms']).is_a?(Array)
          self.transforms = value
        end
      end

      if attributes.key?(:'defaultFontName')
        self.default_font_name = attributes[:'defaultFontName']
      end

      if attributes.key?(:'watermark')
        self.watermark = attributes[:'watermark']
      end

      if attributes.key?(:'cellsOptions')
        self.cells_options = attributes[:'cellsOptions']
      end

      if attributes.key?(:'cadOptions')
        self.cad_options = attributes[:'cadOptions']
      end

      if attributes.key?(:'emailOptions')
        self.email_options = attributes[:'emailOptions']
      end

      if attributes.key?(:'wordsOptions')
        self.words_options = attributes[:'wordsOptions']
      end

      if attributes.key?(:'pdfOptions')
        self.pdf_options = attributes[:'pdfOptions']
      end

      if attributes.key?(:'slidesOptions')
        self.slides_options = attributes[:'slidesOptions']
      end

      if attributes.key?(:'projectOptions')
        self.project_options = attributes[:'projectOptions']
      end

      if attributes.key?(:'startPageNumber')
        self.start_page_number = attributes[:'startPageNumber']
      end

      if attributes.key?(:'countPages')
        self.count_pages = attributes[:'countPages']
      end

      if attributes.key?(:'format')
        self.format = attributes[:'format']
      end

      if attributes.key?(:'quality')
        self.quality = attributes[:'quality']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          password == other.password &&
          attachment_password == other.attachment_password &&
          extract_text == other.extract_text &&
          render_comments == other.render_comments &&
          render_hidden_pages == other.render_hidden_pages &&
          transforms == other.transforms &&
          default_font_name == other.default_font_name &&
          watermark == other.watermark &&
          cells_options == other.cells_options &&
          cad_options == other.cad_options &&
          email_options == other.email_options &&
          words_options == other.words_options &&
          pdf_options == other.pdf_options &&
          slides_options == other.slides_options &&
          project_options == other.project_options &&
          start_page_number == other.start_page_number &&
          count_pages == other.count_pages &&
          format == other.format &&
          quality == other.quality &&
          width == other.width &&
          height == other.height
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [password, attachment_password, extract_text, render_comments, render_hidden_pages, transforms, default_font_name, watermark, cells_options, cad_options, email_options, words_options, pdf_options, slides_options, project_options, start_page_number, count_pages, format, quality, width, height].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
        Time.at(/\d/.match(value)[0].to_f).to_datetime
      when :Date
        Time.at(/\d/.match(value)[0].to_f).to_date
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
