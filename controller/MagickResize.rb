require 'sinatra/base'
require 'conf/infomations.rb'

module MagickResize
    def self.registered(base)
        base.get('/v1/poyo/resize/:image') do |image|
            
            puts image
           "hogehoge #{image}" 
            
        end
    end
end

