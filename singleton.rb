require 'singleton'

class Roshan
  include Singleton

  attr_reader :vida, :veces_muerto

  def initialize
    @vida = 6000
    @veces_muerto = 0
  end

  def recibir_damage(cantidad)
    @vida -= cantidad
    puts "Roshan recibió #{cantidad} de daño. Le quedan #{[@vida, 0].max} de vida."
    morir if @vida < 0
  end

  private

  def morir
    @veces_muerto += 1
    @vida = 6000
    puts "Roshan muerto cae el Aegis, Veces que ha muerto Roshan?: #{@veces_muerto}"
  end
end

roshan_del_radiant = Roshan.instance
roshan_del_dire = Roshan.instance

roshan_del_radiant.recibir_damage(4000)
roshan_del_dire.recibir_damage(2500)
puts "sera el mismo Roshan? #{roshan_del_radiant.equal?(roshan_del_dire)}"

begin
  Roshan.new
rescue NoMethodError => e
  puts "Error: no se puede crear otro Roshan (#{e.message})"
end
