class Client < ApplicationRecord
  belongs_to :user,optional: true
  has_many :actions
  belongs_to :client_rank,optional: true
  belongs_to :client_cat,optional: true
  belongs_to :closing_day,optional: true
  belongs_to :payment_day,optional: true
  belongs_to :payment_method,optional: true
end
