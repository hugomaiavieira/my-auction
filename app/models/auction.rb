class Auction
  include ActiveModel::Model

  def self.product_name
    'Notebook Dell Inspiron 15R'
  end

  def self.description
    "Hugo está leiloando um #{product_name} com processador Intel Core i5, 4 GB de Memória RAM DDR3, tela LED HD de 15.6\" e duas baterias, sendo uma delas TOTALMENTE NOVA!"
  end


  def self.initial_value
    1300
  end

  def self.current_value
    initial_value + (Bid.count * Bid.value)
  end
end
