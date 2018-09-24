require 'csv'

class Message < ApplicationRecord
  has_many :phones
  belongs_to :body_template

  def target_phones_csv
    '"number","company_code","certificate_code"'
  end

  def target_phones_csv=(value)
    rows = ::CSV.parse(value, headers: true)
    rows.each do |row|
      row_hash = row.to_hash
      phone = self.phones.build(row_hash)
      phone.body = self.body_template.body % row_hash.symbolize_keys
    end
  end

  def smash!
    self.phones.find_each do |phone|
      phone.processing!
      sleep 2
      phone.success!
      sleep 1
    end
  end
end
