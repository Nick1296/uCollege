# frozen_string_literal: true

class Secretary < User
  acts_as_user roles: :secretary
end