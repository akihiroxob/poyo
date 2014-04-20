class Validator

    def self.strip_html(str)
        return str.gsub(/<\/?[^>]*>/, "")
    end

    
end
