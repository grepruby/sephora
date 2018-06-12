# frozen_string_literal: true

class RestCountry
  BASE_URL = 'https://restcountries.eu/rest/v2/alpha/'

  def self.find_by_alpha_code(country_code)
    response = JSON.parse(Net::HTTP.get(URI(BASE_URL + country_code)))
    {
      name: response['name'],
      demonym: response['demonym']
    }
  end
end
