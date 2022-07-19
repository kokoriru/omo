class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :manufacturer                                # メーカー
      t.integer :status, default: 0, null: false            # ステータス(ほしいもの/予約中/完了/いらなくなったもの)
      t.string :name                                        # 名称
      t.boolean :high_priority, default: true, null: false  # 優先度高
      t.datetime :started_at                                # 予約開始日
      t.datetime :ended_at                                  # 予約終了日
      t.datetime :release_at                                # 発売日
      t.string :url                                         # 参考URL
      t.string :note                                        # メモ

      t.timestamps
    end
  end
end
