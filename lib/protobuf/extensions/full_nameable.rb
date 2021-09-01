# frozen_string_literal: true

module Primary::Connect::Extensions::FullNameable
  def full_name
    [
      first_name.presence,
      middle_name.presence,
      last_name.presence
    ].compact.join(' ').squeeze(' ').strip
  end
end
