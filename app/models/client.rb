class Client < ApplicationRecord
  belongs_to :user
  has_many :actions
  belongs_to :client_rank
  belongs_to :client_cat
  belongs_to :closing_day
  belongs_to :payment_day
  belongs_to :payment_method
end
