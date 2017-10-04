class CreateConsulta < ActiveRecord::Migration[5.1]
  def change
    create_table :consulta do |t|
      t.string :user_name
      t.string :email
      t.string :empresa
      t.float :faturamento
      t.float :val_titulo
      t.integer :vencimento

      t.timestamps
    end
  end
end
