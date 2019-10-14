class PaymentMethod < ApplicationRecord
  has_many :clients
end
