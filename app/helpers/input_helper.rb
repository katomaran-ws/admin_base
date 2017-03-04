module InputHelper

  ## custom_input_1("title", "Title", "testing title", "juro")
  def custom_input_1(name, label, value=nil, class_name="juro")

    content_tag :div, class: "input #{class_name}".strip do
      input_field=text_field_tag(name, value, class:"text_input input-#{class_name}", id: "input-#{name}")
      label_field=content_tag :label, nil, class: "text_label label-#{class_name}", for: "input-#{name}" do
        content_tag :span, label, "data-content" => label, class: "label-content label-content-#{class_name}"
      end
      input_field+label_field
    end

    # <div class="input juro">
    #   <input class="text_input input-juro" type="text" id="input-29" />
    #   <label class="text_label label-juro" for="input-29">
    #     <span class="label-content label-content-juro">Last Name</span>
    #   </label>
    # </div>

  end

end
