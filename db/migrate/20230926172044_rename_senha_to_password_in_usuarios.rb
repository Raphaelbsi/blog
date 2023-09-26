class RenameSenhaToPasswordInUsuarios < ActiveRecord::Migration[7.0]
  def change
    rename_column :usuarios, :senha, :password
  end
end
