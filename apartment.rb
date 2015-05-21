class Apartment

  attr_accessor :tenants, :in_renovation


  def initialize (options = {})
    @price = options[:price]
    @occupied = options[:occupied]
    @balcony = options[:balcony]
    @sqft =options[:sqft]
    @bedrooms = options[:bedrooms]
    @bathrooms = options [:bathrooms]
    @tenants = options[:tenants] || []
    @in_renovation = false
  end

  def add_tenant(tenant)
    if @tenants.count < @bedrooms && !@in_renovation
      @tenants << tenant  
   end
  end

  def add_tenants(*tenants)   
    if (@tenants + tenants).count <= @bedrooms && !@in_renovation
      @tenants += tenants
    end 
  end

  def gets_in_renovation
    @in_renovation = true
    evict_all
  end

  def occupied?
    @tenants.count != 0
  end

  def vacant?
    @tenants.count == 0
  end

  def evict_all
    @tenants = []
  end

  def tenant_limit(tenants)
    tenants.count {|x| x > bedrooms}
  end
  
  def renovated
    no tenants allowed
  end  

  def to_s
    "blah #{blash}"
  end  
end    