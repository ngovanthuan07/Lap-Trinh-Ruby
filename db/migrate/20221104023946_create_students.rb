class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :mahs
      t.string :ten
      t.string :lop
      t.string :masach
      t.string :tensach
      t.string :tacgia
      t.string :tusach
      t.string :sobm
      t.string :ngaymuon
      t.string :ngaytra
      t.string :songay

      t.timestamps
    end
  end
end
