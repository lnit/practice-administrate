require "administrate/base_dashboard"

class DelayedJobDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    priority: Field::Number,
    attempts: Field::Number,
    handler: Field::Text,
    last_error: Field::Text,
    run_at: Field::DateTime,
    locked_at: Field::DateTime,
    failed_at: Field::DateTime,
    locked_by: Field::String,
    queue: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :priority,
    :attempts,
    :handler,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :priority,
    :attempts,
    :handler,
    :last_error,
    :run_at,
    :locked_at,
    :failed_at,
    :locked_by,
    :queue,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :priority,
    :attempts,
    :handler,
    :last_error,
    :run_at,
    :locked_at,
    :failed_at,
    :locked_by,
    :queue,
  ].freeze

  # Overwrite this method to customize how delayed jobs are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(delayed_job)
  #   "DelayedJob ##{delayed_job.id}"
  # end
end
