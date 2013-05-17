ActiveAdmin.register Question do

  form do |f|
    f.inputs 'Question Detail' do
      f.input :name, :label => 'Question'
      f.input :field_type, :as => :select, :collection => field_types
      f.input :multiple_choice, :wrapper_html => { :class => 'hidden' }
    end
    f.buttons
  end

end
