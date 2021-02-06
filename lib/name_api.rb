class Api
      
    def name_generator(player1)
        url = "https://codexnomina.com/wp-admin/admin-ajax.php?action=get_names"
        name_retrieval = HTTParty.post(url, {
        body: "post_id=118&filter_1=#{player1.species}&filter_2=#{player1.api_gender}",
        headers: {'Content-Type' => 'application/x-www-form-urlencoded'}
      })
      return name_retrieval.split("<br>")
    end

end