 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="pdf_document_options.rb">
 #   Copyright (c) 2003-2024 Aspose Pty Ltd
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
  # Provides options for rendering PDF documents
  class PdfDocumentOptions

    # Disables chars grouping to keep maximum precision during chars positioning when rendering the page
    attr_accessor :disable_chars_grouping

    # Enables rendering of text and graphics according to z-order in original PDF document  when rendering into HTML
    attr_accessor :enable_layered_rendering

    # Enables font hinting. The font hinting adjusts the display of an outline font. Supported only for TTF fonts when these fonts are used in source document.
    attr_accessor :enable_font_hinting

    # When this option enabled the output pages will have the same size in pixels as page size in a source PDF document. By default GroupDocs.Viewer calculates output image page size for better rendering quality. This option is supported when rendering into PNG or JPG formats.
    attr_accessor :render_original_page_size

    # Specifies output image quality for image resources when rendering into HTML. The default value is Low
    attr_accessor :image_quality

    # When this option is set to true, the text is rendered as an image in the output HTML. Enable this option to make text unselectable or to fix characters rendering and make HTML look like PDF. The default value is false. This option is supported when rendering into HTML.
    attr_accessor :render_text_as_image

    # Enables rendering the PDF and EPUB documents to HTML with a fixed layout.
    attr_accessor :fixed_layout

    # Enables wrapping each image in the output HTML document in SVG tag to improve the output quality.
    attr_accessor :wrap_images_in_svg

    # Disables any license restrictions for all fonts in the current XPS/OXPS document.
    attr_accessor :disable_font_license_verifications
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'disable_chars_grouping' => :'DisableCharsGrouping',
        :'enable_layered_rendering' => :'EnableLayeredRendering',
        :'enable_font_hinting' => :'EnableFontHinting',
        :'render_original_page_size' => :'RenderOriginalPageSize',
        :'image_quality' => :'ImageQuality',
        :'render_text_as_image' => :'RenderTextAsImage',
        :'fixed_layout' => :'FixedLayout',
        :'wrap_images_in_svg' => :'WrapImagesInSvg',
        :'disable_font_license_verifications' => :'DisableFontLicenseVerifications'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'disable_chars_grouping' => :'BOOLEAN',
        :'enable_layered_rendering' => :'BOOLEAN',
        :'enable_font_hinting' => :'BOOLEAN',
        :'render_original_page_size' => :'BOOLEAN',
        :'image_quality' => :'String',
        :'render_text_as_image' => :'BOOLEAN',
        :'fixed_layout' => :'BOOLEAN',
        :'wrap_images_in_svg' => :'BOOLEAN',
        :'disable_font_license_verifications' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'DisableCharsGrouping')
        self.disable_chars_grouping = attributes[:'DisableCharsGrouping']
      end

      if attributes.key?(:'EnableLayeredRendering')
        self.enable_layered_rendering = attributes[:'EnableLayeredRendering']
      end

      if attributes.key?(:'EnableFontHinting')
        self.enable_font_hinting = attributes[:'EnableFontHinting']
      end

      if attributes.key?(:'RenderOriginalPageSize')
        self.render_original_page_size = attributes[:'RenderOriginalPageSize']
      end

      if attributes.key?(:'ImageQuality')
        self.image_quality = attributes[:'ImageQuality']
      end

      if attributes.key?(:'RenderTextAsImage')
        self.render_text_as_image = attributes[:'RenderTextAsImage']
      end

      if attributes.key?(:'FixedLayout')
        self.fixed_layout = attributes[:'FixedLayout']
      end

      if attributes.key?(:'WrapImagesInSvg')
        self.wrap_images_in_svg = attributes[:'WrapImagesInSvg']
      end

      if attributes.key?(:'DisableFontLicenseVerifications')
        self.disable_font_license_verifications = attributes[:'DisableFontLicenseVerifications']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @disable_chars_grouping.nil?
        invalid_properties.push("invalid value for 'disable_chars_grouping', disable_chars_grouping cannot be nil.")
      end

      if @enable_layered_rendering.nil?
        invalid_properties.push("invalid value for 'enable_layered_rendering', enable_layered_rendering cannot be nil.")
      end

      if @enable_font_hinting.nil?
        invalid_properties.push("invalid value for 'enable_font_hinting', enable_font_hinting cannot be nil.")
      end

      if @render_original_page_size.nil?
        invalid_properties.push("invalid value for 'render_original_page_size', render_original_page_size cannot be nil.")
      end

      if @image_quality.nil?
        invalid_properties.push("invalid value for 'image_quality', image_quality cannot be nil.")
      end

      if @render_text_as_image.nil?
        invalid_properties.push("invalid value for 'render_text_as_image', render_text_as_image cannot be nil.")
      end

      if @fixed_layout.nil?
        invalid_properties.push("invalid value for 'fixed_layout', fixed_layout cannot be nil.")
      end

      if @wrap_images_in_svg.nil?
        invalid_properties.push("invalid value for 'wrap_images_in_svg', wrap_images_in_svg cannot be nil.")
      end

      if @disable_font_license_verifications.nil?
        invalid_properties.push("invalid value for 'disable_font_license_verifications', disable_font_license_verifications cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @disable_chars_grouping.nil?
      return false if @enable_layered_rendering.nil?
      return false if @enable_font_hinting.nil?
      return false if @render_original_page_size.nil?
      return false if @image_quality.nil?
      image_quality_validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      return false unless image_quality_validator.valid?(@image_quality)
      return false if @render_text_as_image.nil?
      return false if @fixed_layout.nil?
      return false if @wrap_images_in_svg.nil?
      return false if @disable_font_license_verifications.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] image_quality Object to be assigned
    def image_quality=(image_quality)
      validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      if image_quality.to_i == 0
        unless validator.valid?(image_quality)
          raise ArgumentError, "invalid value for 'image_quality', must be one of #{validator.allowable_values}."
        end
        @image_quality = image_quality
      else
        @image_quality = validator.allowable_values[image_quality.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          disable_chars_grouping == other.disable_chars_grouping &&
          enable_layered_rendering == other.enable_layered_rendering &&
          enable_font_hinting == other.enable_font_hinting &&
          render_original_page_size == other.render_original_page_size &&
          image_quality == other.image_quality &&
          render_text_as_image == other.render_text_as_image &&
          fixed_layout == other.fixed_layout &&
          wrap_images_in_svg == other.wrap_images_in_svg &&
          disable_font_license_verifications == other.disable_font_license_verifications
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [disable_chars_grouping, enable_layered_rendering, enable_font_hinting, render_original_page_size, image_quality, render_text_as_image, fixed_layout, wrap_images_in_svg, disable_font_license_verifications].hash
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
