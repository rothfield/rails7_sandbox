# frozen_string_literal: true

class SelectComponent < ViewComponent::Base
  def initialize(form, field, options, label: nil, blank: true)
    @label = label
    @id = form.field_id(field)
    @name = form.field_name(field)
    @options = options
    if blank
      @options = "<option value=''></option>".html_safe + options
    end
  end
end
