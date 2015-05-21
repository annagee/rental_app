class Tenant

  attr_accessor :name  
  def initialize (options ={})
    @name = options[:name]
    @age = options[:age]
    @sex = options[:sex]
    @apartment = options[:appartment] || nil
  end  
end