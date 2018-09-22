class Message < ApplicationRecord
  has_many :phone

  belongs_to :body_template
end
