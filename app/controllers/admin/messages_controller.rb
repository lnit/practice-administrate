module Admin
  class MessagesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Message.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Message.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information

    def smash
      SmashMessageJob.perform_later(params[:id])
      redirect_to action: :show
    end

    def valid_action?(name, resource = resource_class)
      %w[edit].exclude?(name.to_s) && super
    end
  end
end
