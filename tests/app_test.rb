# encoding: UTF-8
require_relative '../app'
require 'minitest/autorun'
require 'rack/test'

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_home_busca_de_endereco
    get '/'
    assert_match /Busca de Endereço/, last_response.body
  end

  def test_home_busca_de_endereco
    get '/?url=Avenida+Rudge+315'
    assert_match /Avenida Rudge, 315/, last_response.body    
  end
end
