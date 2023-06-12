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
  class Meta
    attr_accessor :event_type

    # ISO-8601
    attr_accessor :event_date_and_time

    attr_accessor :test

    attr_accessor :source

    attr_accessor :destinations

    attr_accessor :message

    attr_accessor :transmission

    attr_accessor :facility_code

    # Arbitrary key/value pairs to store with the Order
    attr_accessor :echo

    attr_accessor :provenances

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
        :'event_type' => :'eventType',
        :'event_date_and_time' => :'eventDateAndTime',
        :'test' => :'test',
        :'source' => :'source',
        :'destinations' => :'destinations',
        :'message' => :'message',
        :'transmission' => :'transmission',
        :'facility_code' => :'facilityCode',
        :'echo' => :'echo',
        :'provenances' => :'provenances'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'event_type' => :'String',
        :'event_date_and_time' => :'Time',
        :'test' => :'Boolean',
        :'source' => :'MetaSource',
        :'destinations' => :'Array<MetaDestinations>',
        :'message' => :'MetaMessage',
        :'transmission' => :'MetaTransmission',
        :'facility_code' => :'String',
        :'echo' => :'Object',
        :'provenances' => :'Array<MetaProvenances>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PrimaryConnectClient::Meta` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PrimaryConnectClient::Meta`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'event_date_and_time')
        self.event_date_and_time = attributes[:'event_date_and_time']
      end

      if attributes.key?(:'test')
        self.test = attributes[:'test']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'destinations')
        if (value = attributes[:'destinations']).is_a?(Array)
          self.destinations = value
        end
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'transmission')
        self.transmission = attributes[:'transmission']
      end

      if attributes.key?(:'facility_code')
        self.facility_code = attributes[:'facility_code']
      end

      if attributes.key?(:'echo')
        self.echo = attributes[:'echo']
      end

      if attributes.key?(:'provenances')
        if (value = attributes[:'provenances']).is_a?(Array)
          self.provenances = value
        end
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
      event_type_validator = EnumAttributeValidator.new('String', ["EVENT_TYPE_UNKNOWN", "EVENT_TYPE_NEW_UNSOLICITED", "EVENT_TYPE_UPDATE", "EVENT_TYPE_CANCEL", "EVENT_TYPE_QUERY", "EVENT_TYPE_NEW"])
      return false unless event_type_validator.valid?(@event_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_type Object to be assigned
    def event_type=(event_type)
      validator = EnumAttributeValidator.new('String', ["EVENT_TYPE_UNKNOWN", "EVENT_TYPE_NEW_UNSOLICITED", "EVENT_TYPE_UPDATE", "EVENT_TYPE_CANCEL", "EVENT_TYPE_QUERY", "EVENT_TYPE_NEW"])
      unless validator.valid?(event_type)
        fail ArgumentError, "invalid value for \"event_type\", must be one of #{validator.allowable_values}."
      end
      @event_type = event_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          event_type == o.event_type &&
          event_date_and_time == o.event_date_and_time &&
          test == o.test &&
          source == o.source &&
          destinations == o.destinations &&
          message == o.message &&
          transmission == o.transmission &&
          facility_code == o.facility_code &&
          echo == o.echo &&
          provenances == o.provenances
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [event_type, event_date_and_time, test, source, destinations, message, transmission, facility_code, echo, provenances].hash
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
