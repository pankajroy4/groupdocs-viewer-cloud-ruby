 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="email_options.rb">
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
  # Rendering options for Email file formats. Email file formats include files with extensions: .msg, .eml, .emlx, .ifc, .stl
  class EmailOptions

    # The size of the output page when rendering as PDF or image.
    attr_accessor :page_size

    # The list of supported email message field labels: 1. Field: \"Anniversary\" - default label is \"Anniversary\". 2. Field: \"Attachments\" - default label is \"Attachments\". 3. Field: \"Bcc\" - default label is \"Bcc\". 4. Field: \"Birthday\" - default label is \"Birthday\". 5. Field: \"Business\" - default label is \"Business\". 6. Field: \"BusinessAddress\" - default label is \"Business Address\". 7. Field: \"BusinessFax\" - default label is \"Business Fax\". 8. Field: \"BusinessHomepage\" - default label is \"BusinessHomePage\". 9. Field: \"Cc\" - default label is \"Cc\". 10. Field: \"Company\" - default label is \"Company\". 11. Field: \"Department\" - default label is \"Department\". 12. Field: \"Email\" - default label is \"Email\". 13. Field: \"EmailDisplayAs\" - default label is \"Email Display As\". 14. Field: \"Email2\" - default label is \"Email2\". 15. Field: \"Email2DisplayAs\" - default label is \"Email2 Display As\". 16. Field: \"Email3\" - default label is \"Email3\". 17. Field: \"Email3DisplayAs\" - default label is \"Email3 Display As\". 18. Field: \"End\" - default label is \"End\". 19. Field: \"FirstName\" - default label is \"First Name\". 20. Field: \"From\" - default label is \"From\". 21. Field: \"FullName\" - default label is \"Full Name\". 22. Field: \"Gender\" - default label is \"Gender\". 23. Field: \"Hobbies\" - default label is \"Hobbies\". 24. Field: \"Home\" - default label is \"Home\". 25. Field: \"HomeAddress\" - default label is \"Home Address\". 26. Field: \"Importance\" - default label is \"Importance\". 27. Field: \"JobTitle\" - default label is \"Job Title\". 28. Field: \"LastName\" - default label is \"Last Name\". 29. Field: \"Location\" - default label is \"Location\". 30. Field: \"MiddleName\" - default label is \"Middle Name\". 31. Field: \"Mobile\" - default label is \"Mobile\". 32. Field: \"Organizer\" - default label is \"Organizer\". 33. Field: \"OtherAddress\" - default label is \"Other Address\". 34. Field: \"PersonalHomepage\" - default label is \"PersonalHomePage\". 35. Field: \"Profession\" - default label is \"Profession\". 36. Field: \"Recurrence\" - default label is \"Recurrence\". 37. Field: \"RecurrencePattern\" - default label is \"Recurrence Pattern\". 38. Field: \"RequiredAttendees\" - default label is \"Required Attendees\". 39. Field: \"Sent\" - default label is \"Sent\". 40. Field: \"ShowTimeAs\" - default label is \"Show Time As\". 41. Field: \"SpousePartner\" - default label is \"Spouse/Partner\". 42. Field: \"Start\" - default label is \"Start\". 43. Field: \"Subject\" - default label is \"Subject\". 44. Field: \"To\" - default label is \"To\". 45. Field: \"UserField1\" - default label is \"User Field 1\". 46. Field: \"UserField2\" - default label is \"User Field 2\". 47. Field: \"UserField3\" - default label is \"User Field 3\". 48. Field: \"UserField4\" - default label is \"User Field 4\".
    attr_accessor :field_labels
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
        :'field_labels' => :'FieldLabels'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'page_size' => :'String',
        :'field_labels' => :'Array<FieldLabel>'
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

      if attributes.key?(:'FieldLabels')
        if (value = attributes[:'FieldLabels']).is_a?(Array)
          self.field_labels = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @page_size.nil?
        invalid_properties.push("invalid value for 'page_size', page_size cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @page_size.nil?
      page_size_validator = EnumAttributeValidator.new('String', ["Unspecified", "Letter", "Ledger", "A0", "A1", "A2", "A3", "A4"])
      return false unless page_size_validator.valid?(@page_size)
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          page_size == other.page_size &&
          field_labels == other.field_labels
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [page_size, field_labels].hash
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
