class Consultum < ApplicationRecord
 validates :user_name, :empresa, :faturamento, :val_titulo, :vencimento, presence: true
 validates :faturamento, :val_titulo, :vencimento, numericality: true
 validate :vencimento_cannot_be_less_than_ten
 
def vencimento_cannot_be_less_than_ten
   if vencimento.nil? || vencimento < 10
      errors.add(:vencimento, "Deve ser maior do que 10")
    end
 end
  
def vencimento_cannot_be_less_than_ten
   if val_titulo.nil? || val_titulo < 500
      errors.add(:val_titulo, "Deve ser maior do que R$500,00")
    end
 end
end
