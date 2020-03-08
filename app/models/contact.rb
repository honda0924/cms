class Contact < ApplicationRecord
  belongs_to :client
  belongs_to :act_cat,optional: true
end
