 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="email_options.rb">
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
  # The Email documents rendering options.
  class EmailOptions

    # The document encoding e.g. \"utf-8\".
    attr_accessor :encoding

    # The size of the output page when rendering as PDF or image. Supported values {Unknown|Letter|Ledger|A0|A1|A2|A3}: 1. Unknown - the default, unspecified page size. 2. Letter - the size of the Letter page in points is 792x612. 3. Ledger - the size of the Letter page in points is 1224x792. 4. A0 - the size of the A0 page in points is 3371x2384. 5. A1 - the size of the A1 page in points is 2384x1685. 6. A2 - the size of the A2 page in points is 1684x1190. 7. A3 - the size of the A3 page in points is 1190x842. 8. A4 - the size of the A4 page in points is 842x595.
    attr_accessor :page_size

    # The list of supported email message field labels: 1. Field: \"Anniversary\" - default value is \"Anniversary\". 2. Field: \"Attachments\" - default value is \"Attachments\". 3. Field: \"Bcc\" - default value is \"Bcc\". 4. Field: \"Birthday\" - default value is \"Birthday\". 5. Field: \"Business\" - default value is \"Business\". 6. Field: \"BusinessAddress\" - default value is \"Business Address\". 7. Field: \"BusinessFax\" - default value is \"Business Fax\". 8. Field: \"BusinessHomepage\" - default value is \"BusinessHomePage\". 9. Field: \"Cc\" - default value is \"Cc\". 10. Field: \"Company\" - default value is \"Company\". 11. Field: \"Department\" - default value is \"Department\". 12. Field: \"Email\" - default value is \"Email\". 13. Field: \"EmailDisplayAs\" - default value is \"Email Display As\". 14. Field: \"Email2\" - default value is \"Email2\". 15. Field: \"Email2DisplayAs\" - default value is \"Email2 Display As\". 16. Field: \"Email3\" - default value is \"Email3\". 17. Field: \"Email3DisplayAs\" - default value is \"Email3 Display As\". 18. Field: \"End\" - default value is \"End\". 19. Field: \"FirstName\" - default value is \"First Name\". 20. Field: \"From\" - default value is \"From\". 21. Field: \"FullName\" - default value is \"Full Name\". 22. Field: \"Gender\" - default value is \"Gender\". 23. Field: \"Hobbies\" - default value is \"Hobbies\". 24. Field: \"Home\" - default value is \"Home\". 25. Field: \"HomeAddress\" - default value is \"Home Address\". 26. Field: \"Importance\" - default value is \"Importance\". 27. Field: \"JobTitle\" - default value is \"Job Title\". 28. Field: \"LastName\" - default value is \"Last Name\". 29. Field: \"Location\" - default value is \"Location\". 30. Field: \"MiddleName\" - default value is \"Middle Name\". 31. Field: \"Mobile\" - default value is \"Mobile\". 32. Field: \"Organizer\" - default value is \"Organizer\". 33. Field: \"OtherAddress\" - default value is \"Other Address\". 34. Field: \"PersonalHomepage\" - default value is \"PersonalHomePage\". 35. Field: \"Profession\" - default value is \"Profession\". 36. Field: \"Recurrence\" - default value is \"Recurrence\". 37. Field: \"RecurrencePattern\" - default value is \"Recurrence Pattern\". 38. Field: \"RequiredAttendees\" - default value is \"Required Attendees\". 39. Field: \"Sent\" - default value is \"Sent\". 40. Field: \"ShowTimeAs\" - default value is \"Show Time As\". 41. Field: \"SpousePartner\" - default value is \"Spouse/Partner\". 42. Field: \"Start\" - default value is \"Start\". 43. Field: \"Subject\" - default value is \"Subject\". 44. Field: \"To\" - default value is \"To\". 45. Field: \"UserField1\" - default value is \"User Field 1\". 46. Field: \"UserField2\" - default value is \"User Field 2\". 47. Field: \"UserField3\" - default value is \"User Field 3\". 48. Field: \"UserField4\" - default value is \"User Field 4\".
    attr_accessor :field_labels

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'encoding' => :'encoding',
        :'page_size' => :'pageSize',
        :'field_labels' => :'fieldLabels'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'encoding' => :'String',
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

      if attributes.key?(:'encoding')
        self.encoding = attributes[:'encoding']
      end

      if attributes.key?(:'pageSize')
        self.page_size = attributes[:'pageSize']
      end

      if attributes.key?(:'fieldLabels')
        if (value = attributes[:'fieldLabels']).is_a?(Array)
          self.field_labels = value
        end
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
          encoding == other.encoding &&
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
      [encoding, page_size, field_labels].hash
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
