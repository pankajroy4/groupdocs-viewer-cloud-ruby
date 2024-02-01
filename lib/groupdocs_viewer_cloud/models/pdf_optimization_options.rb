 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="pdf_optimization_options.rb">
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
  # Contains the PDF optimization options to apply to the output PDF file.
  class PdfOptimizationOptions

    # Enables optimization the output PDF file for viewing online with a web browser. This optimization allows a browser to display the first pages of a PDF file when     you open the document, instead of waiting for the entire file to download.
    attr_accessor :lineriaze

    # Enables removing annotation from the output PDF file.
    attr_accessor :remove_annotations

    # Enables removing form fields from a PDF file.
    attr_accessor :remove_form_fields

    # Enables converting the output PDF file to a grayscale.
    attr_accessor :convert_to_gray_scale

    # Subsets fonts in the output PDF file. If the file uses embedded fonts, it contains all font data. GroupDocs.Viewer can subset embedded fonts to reduce the file size.
    attr_accessor :subset_fonts

    # Enables compressing images in the output PDF file. Use this option to allow other compressing options: PdfOptimizationOptions.ImageQuality and PdfOptimizationOptions.MaxResolution.
    attr_accessor :compress_images

    # Sets the image quality in the output PDF file (in percent). To change the image quality, first set the PdfOptimizationOptions.CompressImages property to true.
    attr_accessor :image_quality

    # Enables setting the maximum resolution in the output PDF file. To allow this option, set the GroupDocs.Viewer.Options.PdfOptimizationOptions.CompressImages property to true. This option allows setting the GroupDocs.Viewer.Options.PdfOptimizationOptions.MaxResolution property.
    attr_accessor :resize_images

    # Sets the maximum resolution in the output PDF file. To allow this option, set the GroupDocs.Viewer.Options.PdfOptimizationOptions.CompressImages and GroupDocs.Viewer.Options.PdfOptimizationOptions.MaxResolution properties to true. The default value is 300.
    attr_accessor :max_resolution

    # Enables optimization of spreadsheets in the PDF files. This optimization allows to reduce the output file size by setting up border lines. Besides that, it removes the Arial and Times New Roman characters of 32-127 codes.
    attr_accessor :optimize_spreadsheets

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'lineriaze' => :'Lineriaze',
        :'remove_annotations' => :'RemoveAnnotations',
        :'remove_form_fields' => :'RemoveFormFields',
        :'convert_to_gray_scale' => :'ConvertToGrayScale',
        :'subset_fonts' => :'SubsetFonts',
        :'compress_images' => :'CompressImages',
        :'image_quality' => :'ImageQuality',
        :'resize_images' => :'ResizeImages',
        :'max_resolution' => :'MaxResolution',
        :'optimize_spreadsheets' => :'OptimizeSpreadsheets'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'lineriaze' => :'BOOLEAN',
        :'remove_annotations' => :'BOOLEAN',
        :'remove_form_fields' => :'BOOLEAN',
        :'convert_to_gray_scale' => :'BOOLEAN',
        :'subset_fonts' => :'BOOLEAN',
        :'compress_images' => :'BOOLEAN',
        :'image_quality' => :'Integer',
        :'resize_images' => :'BOOLEAN',
        :'max_resolution' => :'Integer',
        :'optimize_spreadsheets' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Lineriaze')
        self.lineriaze = attributes[:'Lineriaze']
      end

      if attributes.key?(:'RemoveAnnotations')
        self.remove_annotations = attributes[:'RemoveAnnotations']
      end

      if attributes.key?(:'RemoveFormFields')
        self.remove_form_fields = attributes[:'RemoveFormFields']
      end

      if attributes.key?(:'ConvertToGrayScale')
        self.convert_to_gray_scale = attributes[:'ConvertToGrayScale']
      end

      if attributes.key?(:'SubsetFonts')
        self.subset_fonts = attributes[:'SubsetFonts']
      end

      if attributes.key?(:'CompressImages')
        self.compress_images = attributes[:'CompressImages']
      end

      if attributes.key?(:'ImageQuality')
        self.image_quality = attributes[:'ImageQuality']
      end

      if attributes.key?(:'ResizeImages')
        self.resize_images = attributes[:'ResizeImages']
      end

      if attributes.key?(:'MaxResolution')
        self.max_resolution = attributes[:'MaxResolution']
      end

      if attributes.key?(:'OptimizeSpreadsheets')
        self.optimize_spreadsheets = attributes[:'OptimizeSpreadsheets']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @lineriaze.nil?
        invalid_properties.push("invalid value for 'lineriaze', lineriaze cannot be nil.")
      end

      if @remove_annotations.nil?
        invalid_properties.push("invalid value for 'remove_annotations', remove_annotations cannot be nil.")
      end

      if @remove_form_fields.nil?
        invalid_properties.push("invalid value for 'remove_form_fields', remove_form_fields cannot be nil.")
      end

      if @convert_to_gray_scale.nil?
        invalid_properties.push("invalid value for 'convert_to_gray_scale', convert_to_gray_scale cannot be nil.")
      end

      if @subset_fonts.nil?
        invalid_properties.push("invalid value for 'subset_fonts', subset_fonts cannot be nil.")
      end

      if @compress_images.nil?
        invalid_properties.push("invalid value for 'compress_images', compress_images cannot be nil.")
      end

      if @image_quality.nil?
        invalid_properties.push("invalid value for 'image_quality', image_quality cannot be nil.")
      end

      if @resize_images.nil?
        invalid_properties.push("invalid value for 'resize_images', resize_images cannot be nil.")
      end

      if @max_resolution.nil?
        invalid_properties.push("invalid value for 'max_resolution', max_resolution cannot be nil.")
      end

      if @optimize_spreadsheets.nil?
        invalid_properties.push("invalid value for 'optimize_spreadsheets', optimize_spreadsheets cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @lineriaze.nil?
      return false if @remove_annotations.nil?
      return false if @remove_form_fields.nil?
      return false if @convert_to_gray_scale.nil?
      return false if @subset_fonts.nil?
      return false if @compress_images.nil?
      return false if @image_quality.nil?
      return false if @resize_images.nil?
      return false if @max_resolution.nil?
      return false if @optimize_spreadsheets.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          lineriaze == other.lineriaze &&
          remove_annotations == other.remove_annotations &&
          remove_form_fields == other.remove_form_fields &&
          convert_to_gray_scale == other.convert_to_gray_scale &&
          subset_fonts == other.subset_fonts &&
          compress_images == other.compress_images &&
          image_quality == other.image_quality &&
          resize_images == other.resize_images &&
          max_resolution == other.max_resolution &&
          optimize_spreadsheets == other.optimize_spreadsheets
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [lineriaze, remove_annotations, remove_form_fields, convert_to_gray_scale, subset_fonts, compress_images, image_quality, resize_images, max_resolution, optimize_spreadsheets].hash
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
