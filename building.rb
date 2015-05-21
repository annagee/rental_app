# require 'pry'
class Building

  attr_accessor :apartments

  def initialize(options = {})
    @floors = options [:floors]
    @address = options [:address]
    @num_of_apartments = options [:num_of_apartments]
    @age = options [:age]
    @concierge = options [:concierge]
    @apartments = options[:apartments] || []
  end

  def evict
    @apartments.each { |apartment| apartment.evict_all }
  end
  
  def list_all_tenants
    all_tenants = []
    @apartments.each { |apartment| all_tenants += apartment.tenants }
    all_tenants
  end

  def number_of_occupied_flats
    @apartments.select { |apartment| apartment.occupied? }.count
  end

  def number_of_vacant_flats
    vacant_flats.count
  end

  def vacant_flats
    @apartments.select { |apartment| apartment.vacant? }
  end

end    


# binding.pry