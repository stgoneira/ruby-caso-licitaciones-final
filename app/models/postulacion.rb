class Postulacion < ApplicationRecord
  belongs_to :empresa
  belongs_to :licitacion

  validates :propuesta, presence: true, length: {minimum: 3}
end
