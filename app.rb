require 'sinatra/base'
require './lib/resizer'

class Poyo < Sinatra::Base

    ##
    # configure
    #
    configure do
        
        # include controller files
        rootdir = File.expand_path(File.dirname(__FILE__))
        Dir.chdir("#{rootdir}/controller")
        Dir.glob("*.rb") do |file|
            require "controller/#{file}"
            classname = File.basename(file, ".rb")
            register Object.cont_get(classname)
        end
    end

    not_found do
    end

    error do
    end
end

Poyo.run! :host => 'localhost', :port => 4567
