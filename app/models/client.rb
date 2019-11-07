class Client < ApplicationRecord
  belongs_to :user,optional: true
  has_many :contacts

  accepts_nested_attributes_for :contacts

  belongs_to :client_rank,optional: true
  belongs_to :client_cat,optional: true
  belongs_to :closing_day,optional: true
  belongs_to :payment_day,optional: true
  belongs_to :payment_method,optional: true


end
