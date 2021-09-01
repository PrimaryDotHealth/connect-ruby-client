# frozen_string_literal: true

module Primary::Connect::Extensions::PhoneNumberable
  def phone_numbers_of_type(type)
    type = Primary::Connect::PhoneNumber::Type.lookup(type) unless type.is_a? Symbol
    type = type.to_s.upcase.to_sym
    phone_numbers
      .filter { |pn| pn.type == type }
      .collect(&:number)
  end
end
