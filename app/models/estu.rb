class Estu < ApplicationRecord
    validades_presence_of :nombre, presence: true
    validades_format_of :nombre, :with => /\A[a-zA-Z]+\z/
    validates :nombre, length: { maximum: 15 },on: :create
    validates_presence_of :apellido, presence: true
    validates_format_of :apellido, :with => /\A[a-zA-Z]+\z/
    validates :apellido, length: { maximum: 15 },on: :create
    validates_presence_of :carrera, presence: true
    validates_format_of :carrera, :with => /\A[a-zA-Z]+\z/
    validates :carrera, length: { maximum: 15 },on: :create
    validates_presence_of :carnet, presence: true
    validates_format_of :carnet, :with => /\A[a-zA-Z0-9-]+\z/
end
