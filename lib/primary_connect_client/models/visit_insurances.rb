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
  class VisitInsurances
    attr_accessor :plan

    # Patient member number
    attr_accessor :member_number

    attr_accessor :company

    # Insurance policy group number
    attr_accessor :group_number

    # Insurance policy group name
    attr_accessor :group_name

    # YYYY-MM-DD, Effect date of this insurance policy
    attr_accessor :effective_date

    # YYYY-MM-DD, Expiration date of this insurance policy
    attr_accessor :expiration_date

    # Insurance policy number
    attr_accessor :policy_number

    # The insurance priority sequence
    attr_accessor :priority

    # Type of insurance agreement
    attr_accessor :agreement_type

    # Type of insurance Agreement
    attr_accessor :coverage_type

    attr_accessor :insured

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
        :'plan' => :'plan',
        :'member_number' => :'memberNumber',
        :'company' => :'company',
        :'group_number' => :'groupNumber',
        :'group_name' => :'groupName',
        :'effective_date' => :'effectiveDate',
        :'expiration_date' => :'expirationDate',
        :'policy_number' => :'policyNumber',
        :'priority' => :'priority',
        :'agreement_type' => :'agreementType',
        :'coverage_type' => :'coverageType',
        :'insured' => :'insured'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'plan' => :'VisitPlan',
        :'member_number' => :'Array<String>',
        :'company' => :'VisitCompany',
        :'group_number' => :'String',
        :'group_name' => :'String',
        :'effective_date' => :'String',
        :'expiration_date' => :'String',
        :'policy_number' => :'String',
        :'priority' => :'String',
        :'agreement_type' => :'String',
        :'coverage_type' => :'String',
        :'insured' => :'VisitInsured'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PrimaryConnectClient::VisitInsurances` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PrimaryConnectClient::VisitInsurances`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'plan')
        self.plan = attributes[:'plan']
      end

      if attributes.key?(:'member_number')
        if (value = attributes[:'member_number']).is_a?(Array)
          self.member_number = value
        end
      end

      if attributes.key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.key?(:'group_number')
        self.group_number = attributes[:'group_number']
      end

      if attributes.key?(:'group_name')
        self.group_name = attributes[:'group_name']
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'policy_number')
        self.policy_number = attributes[:'policy_number']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'agreement_type')
        self.agreement_type = attributes[:'agreement_type']
      end

      if attributes.key?(:'coverage_type')
        self.coverage_type = attributes[:'coverage_type']
      end

      if attributes.key?(:'insured')
        self.insured = attributes[:'insured']
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
      priority_validator = EnumAttributeValidator.new('String', ["PRIORITY_UNKNOWN", "PRIORITY_PRIMARY", "PRIORITY_SECONDARY", "PRIORITY_TERTIARY"])
      return false unless priority_validator.valid?(@priority)
      agreement_type_validator = EnumAttributeValidator.new('String', ["AGREEMENT_TYPE_UNKNOWN", "AGREEMENT_TYPE_STANDARD", "AGREEMENT_TYPE_UNIFIED", "AGREEMENT_TYPE_MATERNITY"])
      return false unless agreement_type_validator.valid?(@agreement_type)
      coverage_type_validator = EnumAttributeValidator.new('String', ["COVERAGE_TYPE_UNKNOWN", "COVERAGE_TYPE_PATIENT", "COVERAGE_TYPE_CLINIC", "COVERAGE_TYPE_INSURANCE", "COVERAGE_TYPE_OTHER"])
      return false unless coverage_type_validator.valid?(@coverage_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] priority Object to be assigned
    def priority=(priority)
      validator = EnumAttributeValidator.new('String', ["PRIORITY_UNKNOWN", "PRIORITY_PRIMARY", "PRIORITY_SECONDARY", "PRIORITY_TERTIARY"])
      unless validator.valid?(priority)
        fail ArgumentError, "invalid value for \"priority\", must be one of #{validator.allowable_values}."
      end
      @priority = priority
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] agreement_type Object to be assigned
    def agreement_type=(agreement_type)
      validator = EnumAttributeValidator.new('String', ["AGREEMENT_TYPE_UNKNOWN", "AGREEMENT_TYPE_STANDARD", "AGREEMENT_TYPE_UNIFIED", "AGREEMENT_TYPE_MATERNITY"])
      unless validator.valid?(agreement_type)
        fail ArgumentError, "invalid value for \"agreement_type\", must be one of #{validator.allowable_values}."
      end
      @agreement_type = agreement_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coverage_type Object to be assigned
    def coverage_type=(coverage_type)
      validator = EnumAttributeValidator.new('String', ["COVERAGE_TYPE_UNKNOWN", "COVERAGE_TYPE_PATIENT", "COVERAGE_TYPE_CLINIC", "COVERAGE_TYPE_INSURANCE", "COVERAGE_TYPE_OTHER"])
      unless validator.valid?(coverage_type)
        fail ArgumentError, "invalid value for \"coverage_type\", must be one of #{validator.allowable_values}."
      end
      @coverage_type = coverage_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          plan == o.plan &&
          member_number == o.member_number &&
          company == o.company &&
          group_number == o.group_number &&
          group_name == o.group_name &&
          effective_date == o.effective_date &&
          expiration_date == o.expiration_date &&
          policy_number == o.policy_number &&
          priority == o.priority &&
          agreement_type == o.agreement_type &&
          coverage_type == o.coverage_type &&
          insured == o.insured
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [plan, member_number, company, group_number, group_name, effective_date, expiration_date, policy_number, priority, agreement_type, coverage_type, insured].hash
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
