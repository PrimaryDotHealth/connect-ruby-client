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
  class Visit
    # Unique ID of a single visit
    attr_accessor :visit_number

    # An ID that can span several visits often related to the same issue - pregnancy, surgeries, research study, etc.
    attr_accessor :account_number

    # Patient class is used in many EHRs to determine where to put the patient. E.g. Inpatient, Outpatient, Emergency
    attr_accessor :patient_class

    # Timestamp of visit or the arrival time of the visit or admission (ISO-8601)
    attr_accessor :visit_date_time

    attr_accessor :attending_provider

    attr_accessor :consulting_provider

    attr_accessor :referring_provider

    attr_accessor :guarantor

    # List of insurance coverages for the patient
    attr_accessor :insurances

    attr_accessor :location

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'visit_number' => :'visitNumber',
        :'account_number' => :'accountNumber',
        :'patient_class' => :'patientClass',
        :'visit_date_time' => :'visitDateTime',
        :'attending_provider' => :'attendingProvider',
        :'consulting_provider' => :'consultingProvider',
        :'referring_provider' => :'referringProvider',
        :'guarantor' => :'guarantor',
        :'insurances' => :'insurances',
        :'location' => :'location'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'visit_number' => :'String',
        :'account_number' => :'String',
        :'patient_class' => :'String',
        :'visit_date_time' => :'Time',
        :'attending_provider' => :'Provider',
        :'consulting_provider' => :'Provider',
        :'referring_provider' => :'Provider',
        :'guarantor' => :'VisitGuarantor',
        :'insurances' => :'Array<VisitInsurances>',
        :'location' => :'Location'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PrimaryConnectClient::Visit` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PrimaryConnectClient::Visit`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'visit_number')
        self.visit_number = attributes[:'visit_number']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'patient_class')
        self.patient_class = attributes[:'patient_class']
      end

      if attributes.key?(:'visit_date_time')
        self.visit_date_time = attributes[:'visit_date_time']
      end

      if attributes.key?(:'attending_provider')
        self.attending_provider = attributes[:'attending_provider']
      end

      if attributes.key?(:'consulting_provider')
        self.consulting_provider = attributes[:'consulting_provider']
      end

      if attributes.key?(:'referring_provider')
        self.referring_provider = attributes[:'referring_provider']
      end

      if attributes.key?(:'guarantor')
        self.guarantor = attributes[:'guarantor']
      end

      if attributes.key?(:'insurances')
        if (value = attributes[:'insurances']).is_a?(Array)
          self.insurances = value
        end
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          visit_number == o.visit_number &&
          account_number == o.account_number &&
          patient_class == o.patient_class &&
          visit_date_time == o.visit_date_time &&
          attending_provider == o.attending_provider &&
          consulting_provider == o.consulting_provider &&
          referring_provider == o.referring_provider &&
          guarantor == o.guarantor &&
          insurances == o.insurances &&
          location == o.location
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [visit_number, account_number, patient_class, visit_date_time, attending_provider, consulting_provider, referring_provider, guarantor, insurances, location].hash
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
