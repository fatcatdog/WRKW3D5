class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method(name) do
        instance_variable_get("@#{name}")
      end
      define_method("#{name}=") do |name2|
        instance_variable_set("@#{name}", name2)
      end
    end
  end
end
