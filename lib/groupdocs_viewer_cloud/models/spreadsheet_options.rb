 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="spreadsheet_options.rb">
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
  # Rendering options for Spreadsheet file formats. Spreadsheet file formats include files with extensions: .xls, .xlsx, .xlsm, .xlsb, .csv, .ods, .ots, .xltx, .xltm, .tsv 
  class SpreadsheetOptions

    # Allows to enable worksheets pagination. By default one worksheet is rendered into one page.
    attr_accessor :paginate_sheets

    # The number of rows rendered into one page when PaginateSheets is enabled. Default value is 50.
    attr_accessor :count_rows_per_page

    # The columns count to include into each page when splitting worksheet into pages.
    attr_accessor :count_columns_per_page

    # Indicates whether to render grid lines
    attr_accessor :render_grid_lines

    # By default empty rows are skipped. Enable this option in case you want to render empty rows.
    attr_accessor :render_empty_rows

    # By default empty columns are skipped. Enable this option in case you want to render empty columns.
    attr_accessor :render_empty_columns

    # Enables rendering of hidden rows.
    attr_accessor :render_hidden_rows

    # Enables rendering of hidden columns.
    attr_accessor :render_hidden_columns

    # Enables headings rendering.
    attr_accessor :render_headings

    # Enables rendering worksheet(s) sections which is defined as print area. Renders each print area in a worksheet as a separate page.
    attr_accessor :render_print_area_only

    # The text overflow mode for rendering spreadsheet documents into HTML
    attr_accessor :text_overflow_mode
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
        :'paginate_sheets' => :'PaginateSheets',
        :'count_rows_per_page' => :'CountRowsPerPage',
        :'count_columns_per_page' => :'CountColumnsPerPage',
        :'render_grid_lines' => :'RenderGridLines',
        :'render_empty_rows' => :'RenderEmptyRows',
        :'render_empty_columns' => :'RenderEmptyColumns',
        :'render_hidden_rows' => :'RenderHiddenRows',
        :'render_hidden_columns' => :'RenderHiddenColumns',
        :'render_headings' => :'RenderHeadings',
        :'render_print_area_only' => :'RenderPrintAreaOnly',
        :'text_overflow_mode' => :'TextOverflowMode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'paginate_sheets' => :'BOOLEAN',
        :'count_rows_per_page' => :'Integer',
        :'count_columns_per_page' => :'Integer',
        :'render_grid_lines' => :'BOOLEAN',
        :'render_empty_rows' => :'BOOLEAN',
        :'render_empty_columns' => :'BOOLEAN',
        :'render_hidden_rows' => :'BOOLEAN',
        :'render_hidden_columns' => :'BOOLEAN',
        :'render_headings' => :'BOOLEAN',
        :'render_print_area_only' => :'BOOLEAN',
        :'text_overflow_mode' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'PaginateSheets')
        self.paginate_sheets = attributes[:'PaginateSheets']
      end

      if attributes.key?(:'CountRowsPerPage')
        self.count_rows_per_page = attributes[:'CountRowsPerPage']
      end

      if attributes.key?(:'CountColumnsPerPage')
        self.count_columns_per_page = attributes[:'CountColumnsPerPage']
      end

      if attributes.key?(:'RenderGridLines')
        self.render_grid_lines = attributes[:'RenderGridLines']
      end

      if attributes.key?(:'RenderEmptyRows')
        self.render_empty_rows = attributes[:'RenderEmptyRows']
      end

      if attributes.key?(:'RenderEmptyColumns')
        self.render_empty_columns = attributes[:'RenderEmptyColumns']
      end

      if attributes.key?(:'RenderHiddenRows')
        self.render_hidden_rows = attributes[:'RenderHiddenRows']
      end

      if attributes.key?(:'RenderHiddenColumns')
        self.render_hidden_columns = attributes[:'RenderHiddenColumns']
      end

      if attributes.key?(:'RenderHeadings')
        self.render_headings = attributes[:'RenderHeadings']
      end

      if attributes.key?(:'RenderPrintAreaOnly')
        self.render_print_area_only = attributes[:'RenderPrintAreaOnly']
      end

      if attributes.key?(:'TextOverflowMode')
        self.text_overflow_mode = attributes[:'TextOverflowMode']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @paginate_sheets.nil?
        invalid_properties.push("invalid value for 'paginate_sheets', paginate_sheets cannot be nil.")
      end

      if @count_rows_per_page.nil?
        invalid_properties.push("invalid value for 'count_rows_per_page', count_rows_per_page cannot be nil.")
      end

      if @count_columns_per_page.nil?
        invalid_properties.push("invalid value for 'count_columns_per_page', count_columns_per_page cannot be nil.")
      end

      if @render_grid_lines.nil?
        invalid_properties.push("invalid value for 'render_grid_lines', render_grid_lines cannot be nil.")
      end

      if @render_empty_rows.nil?
        invalid_properties.push("invalid value for 'render_empty_rows', render_empty_rows cannot be nil.")
      end

      if @render_empty_columns.nil?
        invalid_properties.push("invalid value for 'render_empty_columns', render_empty_columns cannot be nil.")
      end

      if @render_hidden_rows.nil?
        invalid_properties.push("invalid value for 'render_hidden_rows', render_hidden_rows cannot be nil.")
      end

      if @render_hidden_columns.nil?
        invalid_properties.push("invalid value for 'render_hidden_columns', render_hidden_columns cannot be nil.")
      end

      if @render_headings.nil?
        invalid_properties.push("invalid value for 'render_headings', render_headings cannot be nil.")
      end

      if @render_print_area_only.nil?
        invalid_properties.push("invalid value for 'render_print_area_only', render_print_area_only cannot be nil.")
      end

      if @text_overflow_mode.nil?
        invalid_properties.push("invalid value for 'text_overflow_mode', text_overflow_mode cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @paginate_sheets.nil?
      return false if @count_rows_per_page.nil?
      return false if @count_columns_per_page.nil?
      return false if @render_grid_lines.nil?
      return false if @render_empty_rows.nil?
      return false if @render_empty_columns.nil?
      return false if @render_hidden_rows.nil?
      return false if @render_hidden_columns.nil?
      return false if @render_headings.nil?
      return false if @render_print_area_only.nil?
      return false if @text_overflow_mode.nil?
      text_overflow_mode_validator = EnumAttributeValidator.new('String', ["Overlay", "OverlayIfNextIsEmpty", "AutoFitColumn", "HideText"])
      return false unless text_overflow_mode_validator.valid?(@text_overflow_mode)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text_overflow_mode Object to be assigned
    def text_overflow_mode=(text_overflow_mode)
      validator = EnumAttributeValidator.new('String', ["Overlay", "OverlayIfNextIsEmpty", "AutoFitColumn", "HideText"])
      if text_overflow_mode.to_i == 0
        unless validator.valid?(text_overflow_mode)
          raise ArgumentError, "invalid value for 'text_overflow_mode', must be one of #{validator.allowable_values}."
        end
        @text_overflow_mode = text_overflow_mode
      else
        @text_overflow_mode = validator.allowable_values[text_overflow_mode.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          paginate_sheets == other.paginate_sheets &&
          count_rows_per_page == other.count_rows_per_page &&
          count_columns_per_page == other.count_columns_per_page &&
          render_grid_lines == other.render_grid_lines &&
          render_empty_rows == other.render_empty_rows &&
          render_empty_columns == other.render_empty_columns &&
          render_hidden_rows == other.render_hidden_rows &&
          render_hidden_columns == other.render_hidden_columns &&
          render_headings == other.render_headings &&
          render_print_area_only == other.render_print_area_only &&
          text_overflow_mode == other.text_overflow_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [paginate_sheets, count_rows_per_page, count_columns_per_page, render_grid_lines, render_empty_rows, render_empty_columns, render_hidden_rows, render_hidden_columns, render_headings, render_print_area_only, text_overflow_mode].hash
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
