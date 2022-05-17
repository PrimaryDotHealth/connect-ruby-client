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
  class Result
    attr_accessor :code

    # ID to group separate result components
    attr_accessor :related_group_id

    attr_accessor :specimen

    # Value of the result component
    attr_accessor :value

    # Data type for the result value
    attr_accessor :value_type

    # Timestamp when the results were composed into a report and released.
    attr_accessor :completion_date_time

    attr_accessor :report

    # Units of the result
    attr_accessor :units

    # Notes about the result component/observation
    attr_accessor :notes

    # Indication of whether the result was abnormal
    attr_accessor :abnormal_flag

    # Current status of the result
    attr_accessor :status

    attr_accessor :primary_results_interpreter

    attr_accessor :producer

    attr_accessor :performer

    attr_accessor :reference_range

    attr_accessor :observation_method

    # Unique ID generated by resulting entity
    attr_accessor :producer_order_id

    attr_accessor :finding_value

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
        :'code' => :'code',
        :'related_group_id' => :'relatedGroupId',
        :'specimen' => :'specimen',
        :'value' => :'value',
        :'value_type' => :'valueType',
        :'completion_date_time' => :'completionDateTime',
        :'report' => :'report',
        :'units' => :'units',
        :'notes' => :'notes',
        :'abnormal_flag' => :'abnormalFlag',
        :'status' => :'status',
        :'primary_results_interpreter' => :'primaryResultsInterpreter',
        :'producer' => :'producer',
        :'performer' => :'performer',
        :'reference_range' => :'referenceRange',
        :'observation_method' => :'observationMethod',
        :'producer_order_id' => :'producerOrderId',
        :'finding_value' => :'findingValue'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'code' => :'CodedValue',
        :'related_group_id' => :'Array<String>',
        :'specimen' => :'Specimen',
        :'value' => :'String',
        :'value_type' => :'String',
        :'completion_date_time' => :'Time',
        :'report' => :'ResultReport',
        :'units' => :'String',
        :'notes' => :'Array<String>',
        :'abnormal_flag' => :'String',
        :'status' => :'String',
        :'primary_results_interpreter' => :'Provider',
        :'producer' => :'Object',
        :'performer' => :'Provider',
        :'reference_range' => :'ResultReferenceRange',
        :'observation_method' => :'CodedValue',
        :'producer_order_id' => :'String',
        :'finding_value' => :'CodedValue'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'producer',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PrimaryConnectClient::Result` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PrimaryConnectClient::Result`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'related_group_id')
        if (value = attributes[:'related_group_id']).is_a?(Array)
          self.related_group_id = value
        end
      end

      if attributes.key?(:'specimen')
        self.specimen = attributes[:'specimen']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'value_type')
        self.value_type = attributes[:'value_type']
      end

      if attributes.key?(:'completion_date_time')
        self.completion_date_time = attributes[:'completion_date_time']
      end

      if attributes.key?(:'report')
        self.report = attributes[:'report']
      end

      if attributes.key?(:'units')
        self.units = attributes[:'units']
      end

      if attributes.key?(:'notes')
        if (value = attributes[:'notes']).is_a?(Array)
          self.notes = value
        end
      end

      if attributes.key?(:'abnormal_flag')
        self.abnormal_flag = attributes[:'abnormal_flag']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'primary_results_interpreter')
        self.primary_results_interpreter = attributes[:'primary_results_interpreter']
      end

      if attributes.key?(:'producer')
        self.producer = attributes[:'producer']
      end

      if attributes.key?(:'performer')
        self.performer = attributes[:'performer']
      end

      if attributes.key?(:'reference_range')
        self.reference_range = attributes[:'reference_range']
      end

      if attributes.key?(:'observation_method')
        self.observation_method = attributes[:'observation_method']
      end

      if attributes.key?(:'producer_order_id')
        self.producer_order_id = attributes[:'producer_order_id']
      end

      if attributes.key?(:'finding_value')
        self.finding_value = attributes[:'finding_value']
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
      value_type_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "CODED_ENTRY", "DATE", "DATE_TIME", "ENCAPSULATED_DATA", "FORMATTED_TEXT", "ID", "ID_AND_NAME", "MONEY", "NAME", "NUMERIC", "PHONE_NUMBER", "PRICE", "REFERENCE_POINTER", "STRING", "TIME", "STRUCTURED_NUMERIC", "ADDRESS"])
      return false unless value_type_validator.valid?(@value_type)
      abnormal_flag_validator = EnumAttributeValidator.new('String', ["NONE", "LOW", "VERY_LOW", "HIGH", "VERY_HIGH", "ABNORMAL", "SUSCEPTIBLE", "RESISTANT", "INTERMEDIATE", "MODERATELY_SUSCEPTIBLE", "VERY_SUSCEPTIBLE", "CRITICALLY_ABNORMAL", "CRITICALLY_LOW", "CRITICALLY_HIGH", "NOT_SUSCEPTIBLE", "INCONCLUSIVE", "VERY_ABNORMAL", "NORMAL"])
      return false unless abnormal_flag_validator.valid?(@abnormal_flag)
      status_validator = EnumAttributeValidator.new('String', ["NONE_SPECIFIED", "INCOMPLETE", "CORRECTED", "FINAL", "UNAVAILABLE", "PRELIMINARY", "CANCELED", "DELETED", "REJECTED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value_type Object to be assigned
    def value_type=(value_type)
      validator = EnumAttributeValidator.new('String', ["UNKNOWN", "CODED_ENTRY", "DATE", "DATE_TIME", "ENCAPSULATED_DATA", "FORMATTED_TEXT", "ID", "ID_AND_NAME", "MONEY", "NAME", "NUMERIC", "PHONE_NUMBER", "PRICE", "REFERENCE_POINTER", "STRING", "TIME", "STRUCTURED_NUMERIC", "ADDRESS"])
      unless validator.valid?(value_type)
        fail ArgumentError, "invalid value for \"value_type\", must be one of #{validator.allowable_values}."
      end
      @value_type = value_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] abnormal_flag Object to be assigned
    def abnormal_flag=(abnormal_flag)
      validator = EnumAttributeValidator.new('String', ["NONE", "LOW", "VERY_LOW", "HIGH", "VERY_HIGH", "ABNORMAL", "SUSCEPTIBLE", "RESISTANT", "INTERMEDIATE", "MODERATELY_SUSCEPTIBLE", "VERY_SUSCEPTIBLE", "CRITICALLY_ABNORMAL", "CRITICALLY_LOW", "CRITICALLY_HIGH", "NOT_SUSCEPTIBLE", "INCONCLUSIVE", "VERY_ABNORMAL", "NORMAL"])
      unless validator.valid?(abnormal_flag)
        fail ArgumentError, "invalid value for \"abnormal_flag\", must be one of #{validator.allowable_values}."
      end
      @abnormal_flag = abnormal_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["NONE_SPECIFIED", "INCOMPLETE", "CORRECTED", "FINAL", "UNAVAILABLE", "PRELIMINARY", "CANCELED", "DELETED", "REJECTED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          code == o.code &&
          related_group_id == o.related_group_id &&
          specimen == o.specimen &&
          value == o.value &&
          value_type == o.value_type &&
          completion_date_time == o.completion_date_time &&
          report == o.report &&
          units == o.units &&
          notes == o.notes &&
          abnormal_flag == o.abnormal_flag &&
          status == o.status &&
          primary_results_interpreter == o.primary_results_interpreter &&
          producer == o.producer &&
          performer == o.performer &&
          reference_range == o.reference_range &&
          observation_method == o.observation_method &&
          producer_order_id == o.producer_order_id &&
          finding_value == o.finding_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [code, related_group_id, specimen, value, value_type, completion_date_time, report, units, notes, abnormal_flag, status, primary_results_interpreter, producer, performer, reference_range, observation_method, producer_order_id, finding_value].hash
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
