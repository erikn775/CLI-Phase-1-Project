
require 'open-uri'
require 'httparty'
require 'pry'
class Api
            
    def name_generator(saved_species, saved_gender)
        url = "https://codexnomina.com/wp-admin/admin-ajax.php?action=get_names"
        name_retrieval = HTTParty.post(url, {
        body: "post_id=118&filter_1=#{saved_species}&filter_2=#{saved_gender}",
        headers: {'Content-Type' => 'application/x-www-form-urlencoded'}
      })
      return name_retrieval.split("<br>")
    end

end

