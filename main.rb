require 'pry'

require_relative 'building'
require_relative 'apartment'
require_relative 'tenant'

building_one = Building.new floors: 5, address: 'WDI Heights, 1 GA Road, GAVille', num_of_apartments: 15, age: 100, concierge: true

a1 = Apartment.new price: 3000, occupied: false, balcony: true, sqft:2700, bedrooms: 3, bathrooms: 2
a2 = Apartment.new price: 4000, occupied: false, balcony: true, sqft:3700, bedrooms: 4, bathrooms: 3
a3 = Apartment.new price: 5000, occupied: false, balcony: true, sqft:5000, bedrooms: 5, bathrooms: 3
a4 = Apartment.new price: 3000, occupied: false, balcony: true, sqft:3000, bedrooms: 2, bathrooms: 1
a5 = Apartment.new price: 2500, occupied: false, balcony: false, sqft:1000, bedrooms: 1, bathrooms: 1



[a1, a2, a3].each { |apartment| building_one.apartments << apartment }

tenant_one = Tenant.new name: "Clare", age: 25, sex: "female"
tenant_two = Tenant.new name: "Joe", age: 34, sex: "male"
tenant_three = Tenant.new name:"Sarah", age: 30, sex: "female"
tenant_four = Tenant.new name: "Tracey", age: 29, sex: "female"
tenant_five = Tenant.new name: "Sean", age: 45, sex: "female"

# a1.add_tenant(tenant_one)
a1.add_tenants(tenant_one, tenant_two)
a1.add_tenants(tenant_three, tenant_four)
a1.gets_in_renovation
a1.add_tenants(tenant_five)

# a1.tenants << tenant_one << tenant_two
# a2.tenants << tenant_three
# a3.tenants << tenant_four << tenant_five



binding.pry
nil