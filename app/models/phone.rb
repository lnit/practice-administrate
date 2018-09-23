class Phone < ApplicationRecord
  belongs_to :message
  enum status: {standby: 0, processing: 1, success: 2, error: 9}
end
