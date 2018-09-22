require "administrate/base_dashboard"

class PhoneDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    message: Field::BelongsTo,
    id: Field::Number,
    number: Field::String,
    body: Field::String,
    company_code: Field::String,
    certificate_code: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :message,
    :id,
    :number,
    :body,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :message,
    :id,
    :number,
    :body,
    :company_code,
    :certificate_code,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :message,
    :number,
    :body,
    :company_code,
    :certificate_code,
  ].freeze

  # Overwrite this method to customize how phones are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(phone)
  #   "Phone ##{phone.id}"
  # end
end
