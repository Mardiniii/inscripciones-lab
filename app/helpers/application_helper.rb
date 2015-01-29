module ApplicationHelper
	def link_to_add_fields(name, f, association)
		new_object = f.object.send(association).klass.new
		id = new_object.object_id
		fields = f.fields_for(association, new_object, child_index: id) do |field_hour|
			render(association.to_s.singularize + "_form", hour: field_hour)
		end
		link_to(name, '#', class: "Add_field btn btn-success", data: {id: id, fields: fields.gsub("\n","")})
	end
end
