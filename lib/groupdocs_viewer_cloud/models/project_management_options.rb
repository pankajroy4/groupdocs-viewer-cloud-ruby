 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="project_management_options.rb">
 #   Copyright (c) 2003-2020 Aspose Pty Ltd
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
  # Rendering options for Project file formats. Project file formats include files with extensions: .mpt, .mpp
  class ProjectManagementOptions

    # The size of the page.
    attr_accessor :page_size

    # The time unit to use as minimal point.
    attr_accessor :time_unit

    # The start date of a Gantt Chart View to render.        
    attr_accessor :start_date

    # The end date of a Gantt Chart View to render.
    attr_accessor :end_date
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
        :'page_size' => :'PageSize',
        :'time_unit' => :'TimeUnit',
        :'start_date' => :'StartDate',
        :'end_date' => :'EndDate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'page_size' => :'String',
        :'time_unit' => :'String',
        :'start_date' => :'DateTime',
        :'end_date' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'PageSize')
        self.page_size = attributes[:'PageSize']
      end

      if attributes.key?(:'TimeUnit')
        self.time_unit = attributes[:'TimeUnit']
      end

      if attributes.key?(:'StartDate')
        self.start_date = attributes[:'StartDate']
      end

      if attributes.key?(:'EndDate')
        self.end_date = attributes[:'EndDate']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @page_size.nil?
        invalid_properties.push("invalid value for 'page_size', page_size cannot be nil.")
      end

      if @time_unit.nil?
        invalid_properties.push("invalid value for 'time_unit', time_unit cannot be nil.")
      end

      if @start_date.nil?
        invalid_properties.push("invalid value for 'start_date', start_date cannot be nil.")
      end

      if @end_date.nil?
        invalid_properties.push("invalid value for 'end_date', end_date cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @page_size.nil?
      page_size_validator = EnumAttributeValidator.new('String', ["Unspecified", "Letter", "Ledger", "A0", "A1", "A2", "A3", "A4"])
      return false unless page_size_validator.valid?(@page_size)
      return false if @time_unit.nil?
      time_unit_validator = EnumAttributeValidator.new('String', ["Unspecified", "Days", "ThirdsOfMonths", "Months"])
      return false unless time_unit_validator.valid?(@time_unit)
      return false if @start_date.nil?
      return false if @end_date.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_size Object to be assigned
    def page_size=(page_size)
      validator = EnumAttributeValidator.new('String', ["Unspecified", "Letter", "Ledger", "A0", "A1", "A2", "A3", "A4"])
      if page_size.to_i == 0
        unless validator.valid?(page_size)
          raise ArgumentError, "invalid value for 'page_size', must be one of #{validator.allowable_values}."
        end
        @page_size = page_size
      else
        @page_size = validator.allowable_values[page_size.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] time_unit Object to be assigned
    def time_unit=(time_unit)
      validator = EnumAttributeValidator.new('String', ["Unspecified", "Days", "ThirdsOfMonths", "Months"])
      if time_unit.to_i == 0
        unless validator.valid?(time_unit)
          raise ArgumentError, "invalid value for 'time_unit', must be one of #{validator.allowable_values}."
        end
        @time_unit = time_unit
      else
        @time_unit = validator.allowable_values[time_unit.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          page_size == other.page_size &&
          time_unit == other.time_unit &&
          start_date == other.start_date &&
          end_date == other.end_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [page_size, time_unit, start_date, end_date].hash
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
