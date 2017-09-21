class Persona < ApplicationRecord
  scope :nombre, ->(value) { where("nombre ILIKE '%#{value}%'") }
  scope :sexo, ->(value) { where(sexo: value) }
  scope :edad, ->(value) { where(edad: value) }
  scope :estado, ->(value) { where("estado ILIKE '%#{value}%'") }
end
