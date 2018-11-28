 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="cells_options.rb">
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
  # The Spreadsheet documents rendering options.
  class CellsOptions

    # Indicates whether to render grid lines.
    attr_accessor :render_grid_lines

    # Allows to enable worksheets pagination. By default one worksheet is rendered into one page.
    attr_accessor :paginate_sheets

    # The number of rows rendered into one page when PaginateSheets = true. Default value is 50.
    attr_accessor :count_rows_per_page

    # Indicates whether empty rows should be ignored.
    attr_accessor :ignore_empty_rows

    # The text (*.csv) document encoding.
    attr_accessor :encoding

    # Prefix for hyper-link that references worksheet inside the same document. For rendering document as HTML only.
    attr_accessor :internal_hyperlink_prefix

    # Text overflow mode applied when the text is too big to fit into the cell. Supported values {Overlay|OverlayIfNextIsEmpty|HideText|AutoFitColumn}: 1. Overlay - overlay next cells even they are not empty. 2. OverlayIfNextIsEmpty - overlay next cells only if they are not empty (default). 3. HideText - hide overflow text. 4. AutoFitColumn - expand cell width to fit overflowed text.
    attr_accessor :text_overflow_mode

    # Enables rendering of hidden rows.
    attr_accessor :render_hidden_rows

    # Enables rendering of hidden columns.
    attr_accessor :render_hidden_columns

    # Enables rendering worksheet(s) sections which is defined as print area. Renders each print area in a worksheet as a separate page.
    attr_accessor :render_print_area_only

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'render_grid_lines' => :'renderGridLines',
        :'paginate_sheets' => :'paginateSheets',
        :'count_rows_per_page' => :'countRowsPerPage',
        :'ignore_empty_rows' => :'ignoreEmptyRows',
        :'encoding' => :'encoding',
        :'internal_hyperlink_prefix' => :'internalHyperlinkPrefix',
        :'text_overflow_mode' => :'textOverflowMode',
        :'render_hidden_rows' => :'renderHiddenRows',
        :'render_hidden_columns' => :'renderHiddenColumns',
        :'render_print_area_only' => :'renderPrintAreaOnly'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'render_grid_lines' => :'BOOLEAN',
        :'paginate_sheets' => :'BOOLEAN',
        :'count_rows_per_page' => :'Integer',
        :'ignore_empty_rows' => :'BOOLEAN',
        :'encoding' => :'String',
        :'internal_hyperlink_prefix' => :'String',
        :'text_overflow_mode' => :'String',
        :'render_hidden_rows' => :'BOOLEAN',
        :'render_hidden_columns' => :'BOOLEAN',
        :'render_print_area_only' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'renderGridLines')
        self.render_grid_lines = attributes[:'renderGridLines']
      end

      if attributes.key?(:'paginateSheets')
        self.paginate_sheets = attributes[:'paginateSheets']
      end

      if attributes.key?(:'countRowsPerPage')
        self.count_rows_per_page = attributes[:'countRowsPerPage']
      end

      if attributes.key?(:'ignoreEmptyRows')
        self.ignore_empty_rows = attributes[:'ignoreEmptyRows']
      end

      if attributes.key?(:'encoding')
        self.encoding = attributes[:'encoding']
      end

      if attributes.key?(:'internalHyperlinkPrefix')
        self.internal_hyperlink_prefix = attributes[:'internalHyperlinkPrefix']
      end

      if attributes.key?(:'textOverflowMode')
        self.text_overflow_mode = attributes[:'textOverflowMode']
      end

      if attributes.key?(:'renderHiddenRows')
        self.render_hidden_rows = attributes[:'renderHiddenRows']
      end

      if attributes.key?(:'renderHiddenColumns')
        self.render_hidden_columns = attributes[:'renderHiddenColumns']
      end

      if attributes.key?(:'renderPrintAreaOnly')
        self.render_print_area_only = attributes[:'renderPrintAreaOnly']
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
          render_grid_lines == other.render_grid_lines &&
          paginate_sheets == other.paginate_sheets &&
          count_rows_per_page == other.count_rows_per_page &&
          ignore_empty_rows == other.ignore_empty_rows &&
          encoding == other.encoding &&
          internal_hyperlink_prefix == other.internal_hyperlink_prefix &&
          text_overflow_mode == other.text_overflow_mode &&
          render_hidden_rows == other.render_hidden_rows &&
          render_hidden_columns == other.render_hidden_columns &&
          render_print_area_only == other.render_print_area_only
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [render_grid_lines, paginate_sheets, count_rows_per_page, ignore_empty_rows, encoding, internal_hyperlink_prefix, text_overflow_mode, render_hidden_rows, render_hidden_columns, render_print_area_only].hash
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
