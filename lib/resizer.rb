require 'rubygems'
require 'rmagick'

class Resizer

    AGENT_PC            = 'pc'
    AGENT_SMARTPHONE    = 'smartphone'
    AGENT_TABLET        = 'tablet'

    def self.resize(filepath, type=AGENT_PC)

        width = 120
        height = 120

        image = Magick::Image.read(filename).first

        image.resize_to_fit!(width, height)
        image.to_blob
    end

    def self.thumbnail(filepath)
        image = Magick::Image.read(filepath).first

        image.thumbnail!(scale)
        image.to_blob
    end
end
