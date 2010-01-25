class Array
  # Standard in Ruby 1.8.8. See official documentation[http://ruby-doc.org/core-1.9/classes/Array.html]
  class << self
    def self.try_convert(obj)
      return nil unless obj.respond_to?(:to_ary)
      Backports.coerce_to(obj, Array, :to_ary)
    end unless method_defined? :try_convert
  end
end