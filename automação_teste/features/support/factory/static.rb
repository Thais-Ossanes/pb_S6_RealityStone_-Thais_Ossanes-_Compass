module Factory
    class Static
        def self.load_file #método q define que a massa de dados vai capturar os arquivos
            YAML.load_file(File.dirname(__FILE__) + "/static/#{ENVIRONMENT}.yml")
        end

        def self.static_data(data)
            #binding.pry
            Static.load_file[data]

        end
    end
end 