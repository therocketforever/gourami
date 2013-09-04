class Hash
 
  def mash
    Hash[self.map{|(k,v)| [k.to_sym,v]}]
  end
  
end

require './lib/application.rb'