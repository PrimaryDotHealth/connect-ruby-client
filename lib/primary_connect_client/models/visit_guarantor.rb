=begin
#Primary Connect API V1

#Client Library to interface with Primary Connect

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module PrimaryConnectClient
  # Person ultimately responsible for the bill of the appointment
  class VisitGuarantor
    # Number of the guarantor (?)
    attr_accessor :number

    attr_accessor :name

    attr_accessor :ssn

    # Date of Birth
    attr_accessor :dob

    attr_accessor :sex

    attr_accessor :spouse

    attr_accessor :address

    attr_accessor :phone_numbers

    attr_accessor :email_addresses

    attr_accessor :type

    attr_accessor :relation_to_patient

    attr_accessor :employer

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
        :'number' => :'number',
        :'name' => :'name',
        :'ssn' => :'ssn',
        :'dob' => :'dob',
        :'sex' => :'sex',
        :'spouse' => :'spouse',
        :'address' => :'address',
        :'phone_numbers' => :'phoneNumbers',
        :'email_addresses' => :'emailAddresses',
        :'type' => :'type',
        :'relation_to_patient' => :'relationToPatient',
        :'employer' => :'employer'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'number' => :'String',
        :'name' => :'Name',
        :'ssn' => :'String',
        :'dob' => :'String',
        :'sex' => :'String',
        :'spouse' => :'Name',
        :'address' => :'Address',
        :'phone_numbers' => :'Array<PhoneNumber>',
        :'email_addresses' => :'Array<String>',
        :'type' => :'String',
        :'relation_to_patient' => :'String',
        :'employer' => :'VisitGuarantorEmployer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PrimaryConnectClient::VisitGuarantor` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PrimaryConnectClient::VisitGuarantor`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'ssn')
        self.ssn = attributes[:'ssn']
      end

      if attributes.key?(:'dob')
        self.dob = attributes[:'dob']
      end

      if attributes.key?(:'sex')
        self.sex = attributes[:'sex']
      end

      if attributes.key?(:'spouse')
        self.spouse = attributes[:'spouse']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'phone_numbers')
        if (value = attributes[:'phone_numbers']).is_a?(Array)
          self.phone_numbers = value
        end
      end

      if attributes.key?(:'email_addresses')
        if (value = attributes[:'email_addresses']).is_a?(Array)
          self.email_addresses = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'relation_to_patient')
        self.relation_to_patient = attributes[:'relation_to_patient']
      end

      if attributes.key?(:'employer')
        self.employer = attributes[:'employer']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      sex_validator = EnumAttributeValidator.new('String', ["SEX_UNKNOWN", "SEX_FEMALE", "SEX_MALE", "SEX_OTHER", "SEX_NON_BINARY", "SEX_PREFER_NOT_TO_DISCLOSE"])
      return false unless sex_validator.valid?(@sex)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sex Object to be assigned
    def sex=(sex)
      validator = EnumAttributeValidator.new('String', ["SEX_UNKNOWN", "SEX_FEMALE", "SEX_MALE", "SEX_OTHER", "SEX_NON_BINARY", "SEX_PREFER_NOT_TO_DISCLOSE"])
      unless validator.valid?(sex)
        fail ArgumentError, "invalid value for \"sex\", must be one of #{validator.allowable_values}."
      end
      @sex = sex
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          number == o.number &&
          name == o.name &&
          ssn == o.ssn &&
          dob == o.dob &&
          sex == o.sex &&
          spouse == o.spouse &&
          address == o.address &&
          phone_numbers == o.phone_numbers &&
          email_addresses == o.email_addresses &&
          type == o.type &&
          relation_to_patient == o.relation_to_patient &&
          employer == o.employer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [number, name, ssn, dob, sex, spouse, address, phone_numbers, email_addresses, type, relation_to_patient, employer].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
      else # model
        # models (e.g. Pet) or oneOf
        klass = PrimaryConnectClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
