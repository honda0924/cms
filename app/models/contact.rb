class Contact < ApplicationRecord
  belongs_to :client,optional: true
  belongs_to :act_cat,optional: true
end
