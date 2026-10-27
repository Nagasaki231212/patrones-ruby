class CreepMelee
  def atacar
    "Creep de melee golpea con su espadota"
  end
end

class CreepRanged
  def atacar
    "Creep de rango dispara desde muy lejos"
  end
end

class Barraca
  def generar_oleada(cantidad)
    puts "#{self.class.name} se crea una oleada:"
    cantidad.times do
      creep = crear_creep
      puts "  - #{creep.atacar}"
    end
  end

  def crear_creep
    raise NotImplementedError, "#{self.class} tiene que implementar crear_creep"
  end
end

class BarracaMelee < Barraca
  def crear_creep
    CreepMelee.new
  end
end

class BarracaRanged < Barraca
  def crear_creep
    CreepRanged.new
  end
end

BarracaMelee.new.generar_oleada(2)
BarracaRanged.new.generar_oleada(2)
