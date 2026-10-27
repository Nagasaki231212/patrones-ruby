class CreepRadiant
  def descripcion
    "Creep de los Radiant"
  end
end

class TorreRadiant
  def descripcion
    "Torre de los Radiant"
  end
end

class AncientRadiant
  def descripcion
    "Ancient de los Radiant"
  end
end

class CreepDire
  def descripcion
    "Creep de los Dire"
  end
end

class TorreDire
  def descripcion
    "Torre del Dire"
  end
end

class AncientDire
  def descripcion
    "Ancient del Dire"
  end
end

class FabricaRadiant
  def crear_creep
    CreepRadiant.new
  end

  def crear_torre
    TorreRadiant.new
  end

  def crear_ancient
    AncientRadiant.new
  end
end

class FabricaDire
  def crear_creep
    CreepDire.new
  end

  def crear_torre
    TorreDire.new
  end

  def crear_ancient
    AncientDire.new
  end
end

class Base
  def initialize(fabrica)
    @creep = fabrica.crear_creep
    @torre = fabrica.crear_torre
    @ancient = fabrica.crear_ancient
  end

  def mostrar
    puts "  - #{@creep.descripcion}"
    puts "  - #{@torre.descripcion}"
    puts "  - #{@ancient.descripcion}"
  end
end

puts "Base de los Radiant:"
Base.new(FabricaRadiant.new).mostrar

puts "Base de los Dire:"
Base.new(FabricaDire.new).mostrar
